// swift-tools-version: 5.10
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription
import CompilerPluginSupport

let package = Package(
    name: "packages",
    platforms: [.iOS(.v17), .macOS(.v13)],
    products: [
        .library(
            name: "packages",
            targets: ["App"]
        ),
        .library(
            name: "MacroFeature",
            targets: ["Macros"]
        )
    ],
    dependencies: [
        .package(url: "https://github.com/apple/swift-syntax.git", from: "510.0.0"),
    ],
    targets: [
        .macro(
            name: "Plugins",
            dependencies: [
                .product(name: "SwiftSyntaxMacros", package: "swift-syntax"),
                .product(name: "SwiftCompilerPlugin", package: "swift-syntax")
            ]
        ),
        .target(
            name: "App",
            dependencies: [
                "Macros"
            ]
        ),
        .target(
            name: "Macros",
            dependencies: [
                "Plugins"
            ]
        ),
        .testTarget(
            name: "PluginTests",
            dependencies: [
                "Plugins",
                .product(name: "SwiftSyntaxMacrosTestSupport", package: "swift-syntax")
            ]
        )
    ]
)
