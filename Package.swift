import PackageDescription

let package = Package(
    name: "CodeRunnerCLI",
    targets: [
        Target(
            name: "CodeRunnerCLI",
            dependencies: ["CodeRunnerCore"]
        ),
        Target(name: "CodeRunnerCore")
    ],
    dependencies: [
        // Be sure to change this one to original repository once new version is released
        .Package(url: "https://github.com/cojoj/Files.git", majorVersion: 1),
        .Package(url: "https://github.com/JohnSundell/ShellOut.git", majorVersion: 1)
    ]
)
