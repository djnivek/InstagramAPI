//
//  TweetModelTestsCase.swift
//  TwitterAPITests
//
//  Created by MACHADO KEVIN on 16/02/2019.
//

import XCTest
import TwitterAPI

class TweetModelTestsCase: XCTestCase {

    static var allTests = [
        ("testTweetModel", testTweetModel)
    ]
    
    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testTweetModel() {
        
        do {
            let tweets = try JSONDecoder().decode([Tweet].self, from: UserTimeline.json!)
            XCTAssertNotNil(tweets, "Tweets has not been parsed correctly")
            for tweet in tweets {
                XCTAssertNotNil(tweet, "Tweet has not been parsed correctly")
            }
        } catch {
            print(error)
        }
        
    }
    
    

}
