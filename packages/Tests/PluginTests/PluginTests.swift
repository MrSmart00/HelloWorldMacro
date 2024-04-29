//
//  HelloWorldPluginTests.swift
//  
//
//  Created by 日野森寛也 on 2024/04/29.
//

import SwiftSyntaxMacros
import SwiftSyntaxMacrosTestSupport
import XCTest

#if canImport(Plugins)
import Plugins
#endif

final class HelloWorldPluginTests: XCTestCase {

    func test_Macro() throws {
        #if canImport(Plugins)
        let testMacros: [String: Macro.Type] = [
            "sayHelloWorld": HelloWorld.self,
        ]

        assertMacroExpansion(
            """
            #sayHelloWorld("XXXX")
            """,
            expandedSource: """
            "Hello World XXXX!!!"
            """,
            macros: testMacros
        )
        #else
        throw XCTSkip("macros are only supported when running tests for the host platform")
        #endif
    }
}
