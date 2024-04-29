//
//  Difinitions.swift
//
//
//  Created by 日野森寛也 on 2024/04/29.
//

@freestanding(expression)
public macro sayHelloWorld(with string: String) -> String = #externalMacro(module: "Plugins", type: "HelloWorld")
