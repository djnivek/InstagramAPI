//
//  Network.swift
//  RxGramAPI-iOS
//
//  Created by MACHADO KEVIN on 27/01/2019.
//  Copyright © 2019 Zerty Color. All rights reserved.
//

import Foundation
import Alamofire

typealias Path = String
protocol Provider {
    associatedtype Element
    var path: Path { get }
    var params: Parameters? { get }
    var method: HTTPMethod { get }
    @discardableResult func request(completion: @escaping (Element) -> Void) -> DataRequest
}

extension Provider where Element: Decodable {
    @discardableResult func request(completion: @escaping (Element) -> Void) -> DataRequest {
        let request = Alamofire.request(Instagram.Info.baseURL.appendingPathComponent(path),
                          method: method,
                          parameters: params,
                          encoding: JSONEncoding.default,
                          headers: nil).responseJSON { (response) in
                       completion(try! JSONDecoder().decode(Element.self, from: response.data!))
        }
        request.resume()
        return request
    }
}
