// swift-tools-version:5.2
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "bender",
    products: [
        // Products define the executables and libraries produced by a package, and make them visible to other packages.
        .library(
            name: "bender",
            targets: ["bender"]),
    ],
    dependencies: [
        // Dependencies declare other packages that this package depends on.
        // .package(url: /* package url */, from: "1.0.0"),
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages which this package depends on.
        .target(
            name: "bender",
            dependencies: [],
            exclude: ["Sources/bender/bender/Excluded/",
                      "Sources/bender/bender/Excluded/Utils.h",
                      "Sources/bender/bender/Excluded/Utils.m",
                      "bender/bender/Excluded/",
                      "bender/bender/Excluded/Utils.h",
                      "bender/bender/Excluded/Utils.m",
                      "bender/Excluded/",
                      "bender/Excluded/Utils.h",
                      "bender/Excluded/Utils.m",
                      "Excluded/Utils.h",
                      "Excluded/Utils.m",
                      "Utils.h",
                      "Utils.m"]),
        .testTarget(
            name: "benderTests",
            dependencies: ["bender"]),
    ]
)
