// swift-tools-version:4.0
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "CodeRunnerCLI",
    products: [
        .executable(name: "coderunner", targets: ["CodeRunner"])
    ],
    dependencies: [
        .package(url: "https://github.com/JohnSundell/Files", from: "1.9.0"),
        .package(url: "https://github.com/JohnSundell/ShellOut", from: "1.0.0"),
        .package(url: "https://github.com/JohnSundell/Require", from: "1.0.0")
    ],
    targets: [
        .target(name: "CodeRunner", dependencies: ["CodeRunnerCore"]),
        .target(name: "CodeRunnerCore", dependencies: ["Files", "ShellOut", "Require"]),
        .testTarget(name: "CodeRunnerTests", dependencies: ["CodeRunnerCore"])
    ],
    swiftLanguageVersions: [4]
)
