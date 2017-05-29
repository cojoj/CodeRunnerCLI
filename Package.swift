import PackageDescription

let package = Package(
    name: "CodeRunnerCLI",
    targets: [
        Target(
            name: "CodeRunnerCLI",
            dependencies: ["CodeRunnerCore"]
        ),
        Target(name: "CodeRunnerCore")
    ]
)
