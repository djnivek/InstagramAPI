//
//  TwitterAPITests.swift
//  Zerty Color
//
//  Created by Kevin Machado on 25/01/2019.
//  Copyright © 2019 Zerty Color. All rights reserved.
//

import Foundation
import XCTest
@testable import TwitterAPI

class TwitterAPITests: XCTestCase {
    
    func testUserTimelineScreenName() {
        let api = Twitter.Statuses.userTimeline(screenName: "djnivek", userID: nil)
        XCTAssert(api.path == "user_timeline.json?screen_name=djnivek")
    }
    
    func testUserTimelineUserId() {
        let api = Twitter.Statuses.userTimeline(screenName: nil, userID: "12")
        XCTAssert(api.path == "user_timeline.json?user_id=12")
    }
    
    func testUserTimelineScreenNameAndUserId() {
        let api = Twitter.Statuses.userTimeline(screenName: "djnivek", userID: "12")
        XCTAssert(api.path == "user_timeline.json?screen_name=djnivek&user_id=12")
    }
    
    func testUserTimelineEmpty() {
        let api = Twitter.Statuses.userTimeline(screenName: nil, userID: nil)
        XCTAssert(api.path == "user_timeline.json")
    }
    
}
