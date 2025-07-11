// swift-tools-version:5.9
import PackageDescription

let package = Package(
    name: "CapacitorPluginAppTrackingTransparency",
    platforms: [.iOS(.v14)],
    products: [
        .library(
            name: "CapacitorPluginAppTrackingTransparency",
            targets: ["AppTrackingTransparencySwift"]
        ),
    ],
    targets: [
        .target(
            name: "AppTrackingTransparencyObjC",
            path: "ios/Plugin",
            publicHeadersPath: ".",
            sources: [
                "AppTrackingTransparencyPlugin.m",
                "AppTrackingTransparencyPlugin.h"
            ]
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