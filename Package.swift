// swift-tools-version:5.3
import PackageDescription

let package = Package(
    name: "EnergyaspectsCapacitorPluginAppTrackingTransparency",
    platforms: [
        .iOS("14.0")
    ],
    products: [
        .library(
            name: "EnergyaspectsCapacitorPluginAppTrackingTransparency",
            targets: ["CapacitorPluginAppTrackingTransparency"]
        )
    ],
    dependencies: [
        .package(url: "https://github.com/ionic-team/capacitor-swift-pm.git", .exact("7.0.0"))
    ],
    targets: [
        .target(
            name: "CapacitorPluginAppTrackingTransparency",
            dependencies: [
                .product(name: "Capacitor", package: "capacitor-swift-pm")
            ],
            path: "ios/Plugin",
            sources: ["AppTrackingTransparencyPlugin.swift", "AppTrackingTransparency.swift", "AppTrackingTransparencyPlugin.m"],
            publicHeadersPath: ".",
            cSettings: [
                .headerSearchPath(".")
            ],
            linkerSettings: [
                .linkedFramework("AppTrackingTransparency")
            ]
        )
    ]
)
