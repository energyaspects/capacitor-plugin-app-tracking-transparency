// swift-tools-version:5.9
import PackageDescription

let package = Package(
    name: "EnergyaspectsCapacitorPluginAppTrackingTransparency",
    platforms: [.iOS(.v14)],
    products: [
        .library(
            name: "EnergyaspectsCapacitorPluginAppTrackingTransparency",
            targets: ["AppTrackingTransparencySwift"]
        ),
    ],
    targets: [
        .target(
            name: "AppTrackingTransparencyObjC",
            path: "ios/Plugin",
            sources: [
                "AppTrackingTransparencyPlugin.m",
                "AppTrackingTransparencyPlugin.h"
            ],
            publicHeadersPath: "."
        ),
        .target(
            name: "AppTrackingTransparencySwift",
            dependencies: ["AppTrackingTransparencyObjC"],
            path: "ios/Plugin",
            sources: [
                "AppTrackingTransparency.swift",
                "AppTrackingTransparencyPlugin.swift"
            ]
        )
    ]
)