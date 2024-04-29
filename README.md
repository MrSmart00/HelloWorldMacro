# HelloWorldMacro
<img src="https://img.shields.io/badge/-xcode-000000.svg?logo=Xcode&style=for-the-badge"> <img src="https://img.shields.io/badge/-swift-000000.svg?logo=Swift&style=for-the-badge">

Super Simple Swift Macro

<img width=700 src='https://github.com/MrSmart00/HelloWorldMacro/assets/8654605/0818f568-46cd-4df8-96e1-28a0940fbe49' />
<img width=700 src='https://github.com/MrSmart00/HelloWorldMacro/assets/8654605/1d2fc6e4-1341-4c88-960f-f89ad6ff4239' />



## SUMMARY

To understand the structure of Swift Macros, I created a simple macro as a basic functionality.<br>
This macro appends `Hello World` to any input string.

## USAGE

```
let value = #sayHelloWorld(with: "XXXX") // "Hello World XXXX!!!"
```

### HOW TO TESTING FOR MACROS

|  |  |  |
|:--:|:--|:--|
| 1 | Switch the scheme to `MacroFeature` | ![スクリーンショット 2024-04-29 19 58 46](https://github.com/MrSmart00/HelloWorldMacro/assets/8654605/c15f7b44-55c9-476a-b7f7-f80e856a8316) |
| 2 | Select `My Mac` from the Macs as the device to run on | ![スクリーンショット 2024-04-29 19 59 04](https://github.com/MrSmart00/HelloWorldMacro/assets/8654605/dd2b677b-7fed-4df2-a347-71b940523992) |
| 3 | If set up this way, it is possible to test | ![スクリーンショット 2024-04-29 19 59 10](https://github.com/MrSmart00/HelloWorldMacro/assets/8654605/c5dbb743-03e2-4c87-9a36-ed5a3c965cf3) |

## PRECONDITION

This time, the design involves adding macros within the app.<br>
The project is separated into packages using the Swift Package Manager.

## Structure
```
.
├── .gitignore
├── hello-world-macro.xcworkspace
├── HelloWorld
│  ├── Sandbox
│  │  ├── Assets.xcassets
│  │  ├── Preview Content
│  │  └── SandboxApp.swift
│  └── Sandbox.xcodeproj
├── LICENSE
├── packages
│  ├── Package.swift
│  ├── Sources
│  │  ├── App
│  │  ├── Macros
│  │  └── Plugins
│  └── Tests
│     └── PluginTests
└── README.md
```
