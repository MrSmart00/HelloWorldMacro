//
//  HelloWorldPlugin.swift
//
//
//  Created by 日野森寛也 on 2024/04/29.
//

import SwiftSyntax
import SwiftSyntaxMacros

public struct HelloWorld: ExpressionMacro {
    public static func expansion(
        of node: some FreestandingMacroExpansionSyntax,
        in context: some MacroExpansionContext
    ) throws -> ExprSyntax {
        guard let argument = node.arguments.first?.expression,
              let segments = argument.as(StringLiteralExprSyntax.self)?.segments,
              segments.count == 1,
              case .stringSegment(let literalSegment)? = segments.first
        else {
            fatalError("Need a static string")
        }
        let result = "Hello World \(literalSegment.content.text)!!!"
        return "\(literal: result)"
    }
}
