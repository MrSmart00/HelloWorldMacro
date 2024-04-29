//
//  ContentView.swift
//  Sandbox
//
//  Created by 日野森寛也 on 2024/04/28.
//

import SwiftUI
import Macros

public struct ContentView: View {
    public init() { }

    public var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text(#sayHelloWorld(with: "Hiro"))
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
