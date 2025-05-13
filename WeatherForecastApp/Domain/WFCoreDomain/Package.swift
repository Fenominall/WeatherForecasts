// swift-tools-version: 6.1
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "WFCoreDomain",
    products: [
        .library(
            name: "WFCoreDomain",
            targets: ["WFCoreDomain"]),
    ],
    targets: [
        .target(
            name: "WFCoreDomain"),
        .testTarget(
            name: "WFCoreDomainTests",
            dependencies: ["WFCoreDomain"]
        ),
    ]
)
