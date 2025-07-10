// swift-tools-version:5.3
import PackageDescription

let package = Package(
    name: "CapacitorPluginAppTrackingTransparency",
    platforms: [
        .iOS(.v12)
    ],
    products: [
        .library(
            name: "CapacitorPluginAppTrackingTransparency",
            targets: ["CapacitorPluginAppTrackingTransparency"]
        )
    ],
    dependencies: [
        .package(url: "https://github.com/ionic-team/capacitor-ios.git", from: "4.3.0")
    ],
    targets: [
        .target(
            name: "CapacitorPluginAppTrackingTransparency",
            dependencies: [
                .product(name: "Capacitor", package: "capacitor-ios")
            ],
            path: "ios/Plugin",
            sources: ["AppTrackingTransparencyPlugin.swift", "AppTrackingTransparency.swift", "AppTrackingTransparencyPlugin.m"],
            publicHeadersPath: ".",
            cSettings: [
                .headerSearchPath(".")
            ]
        )
    ]
)
