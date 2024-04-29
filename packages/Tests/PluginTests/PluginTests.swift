//
//  HelloWorldPluginTests.swift
//  
//
//  Created by 日野森寛也 on 2024/04/29.
//

import SwiftSyntaxMacros
import SwiftSyntaxMacrosTestSupport
import XCTest
import Macros

final class HelloWorldPluginTests: XCTestCase {

    func testExample() throws {
        let value = #sayHelloWorld(with: "XXXX")
        XCTAssertEqual("Hello World XXXX!!!", value)
    }

}
