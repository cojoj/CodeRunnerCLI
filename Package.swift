// swift-tools-version:5.8
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "CodeRunnerCLI",
    dependencies: [
        .package(url: "https://github.com/JohnSundell/Files", from: "3.1.0"),
        .package(url: "https://github.com/JohnSundell/ShellOut", from: "2.3.0"),
        .package(url: "https://github.com/JohnSundell/Require", from: "2.0.0")
    ],
    targets: [
        .executableTarget(name: "CodeRunnerCLI", dependencies: ["CodeRunnerCore"]),
        .testTarget(name: "CodeRunnerCLITests", dependencies: ["CodeRunnerCore"]),
        .target(name: "CodeRunnerCore", dependencies: ["Files", "ShellOut", "Require"])
    ]
)
