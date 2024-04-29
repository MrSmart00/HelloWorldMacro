//
//  HelloWorldPlugin.swift
//  
//
//  Created by 日野森寛也 on 2024/04/29.
//

import SwiftSyntaxMacros
import SwiftCompilerPlugin

@main
struct HelloWorldPlugin: CompilerPlugin {
    var providingMacros: [Macro.Type] = [HelloWorld.self]
}
