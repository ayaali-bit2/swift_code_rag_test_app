// swift-tools-version:5.9
import PackageDescription

let package = Package(
    name: "swift_code_rag_test_app",
    platforms: [.macOS(.v14)],
    products: [
        .executable(name: "SimpleSwiftApp", targets: ["SimpleSwiftApp"])
    ],
    targets: [
        .executableTarget(
            name: "SimpleSwiftApp",
            path: "Sources/SimpleSwiftApp"
        ),
        .testTarget(
            name: "SimpleSwiftAppTests",
            dependencies: ["SimpleSwiftApp"],
            path: "Tests/SimpleSwiftAppTests"
        )
    ]
)
