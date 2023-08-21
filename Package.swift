// swift-tools-version:4.2
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "CodeRunnerCLI",
    dependencies: [
        .package(url: "https://github.com/JohnSundell/Files", from: "1.9.0"),
        .package(url: "https://github.com/JohnSundell/ShellOut", from: "1.0.0"),
        .package(url: "https://github.com/JohnSundell/Require", from: "1.0.0")
    ],
    targets: [
        .target(name: "CodeRunnerCLI", dependencies: ["CodeRunnerCore"]),
        .testTarget(name: "CodeRunnerCLITests", dependencies: ["CodeRunnerCore"]),
        .target(name: "CodeRunnerCore", dependencies: ["Files", "ShellOut", "Require"])
    ],
    swiftLanguageVersions: [4]
)
