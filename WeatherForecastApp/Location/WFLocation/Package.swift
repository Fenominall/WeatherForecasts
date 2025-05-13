// swift-tools-version: 6.1
import PackageDescription

let package = Package(
    name: "WFLocation",
    products: [
        .library(
            name: "WFLocation",
            targets: ["WFLocation"]),
    ],
    dependencies: [
        .package(path: ".Domain/WFCoreDomain")
    ],
    targets: [
        .target(
            name: "WFLocation",
            dependencies: [
                .product(name: "WFCoreDomain", package: "WFCoreDomain")
            ]
        ),
        .testTarget(
            name: "WFLocationTests",
            dependencies: ["WFLocation"]
        ),
    ]
)
