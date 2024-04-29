// swift-tools-version: 5.7
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "PressengerSDK",
    products: [
        // Products define the executables and libraries a package produces, and make them visible to other packages.
        .library(
            name: "PressengerSDK",
            targets: ["PressengerSDK"]),
        .library(
            name: "PressengerNotificationServiceExtensionSDK",
            targets: ["PressengerNotificationServiceExtensionSDK"]),
        .library(
            name: "PressengerNotificationContentExtensionSDK",
            targets: ["PressengerNotificationContentExtensionSDK"]),
    ],
    dependencies: [
        // Dependencies declare other packages that this package depends on.
        // .package(url: /* package url */, from: "1.0.0"),
    ],
    targets: [
        .binaryTarget(
                    name: "PressengerSDK",
                    url: "https://maven2.pressenger.com/pods/PressengerSDK/PressengerSDK-v4.3.44.zip",
                    checksum: "7850f5bb319e84b3456705ecea0acba8e14bb7093fd51b3ba86b1d0dc579ccfe"
                ),
        .binaryTarget(
                    name: "PressengerNotificationServiceExtensionSDK",
                    url: "https://maven2.pressenger.com/pods/PressengerSDK/PressengerNotificationServiceExtensionSDK-v4.3.44.zip",
                    checksum: "51aa2e10d8087139c2d81d3f6e7806d3df162e3bb5f2cfd02270d858beb6d589"
                ),
        .binaryTarget(
                    name: "PressengerNotificationContentExtensionSDK",
                    url: "https://maven2.pressenger.com/pods/PressengerSDK/PressengerNotificationContentExtensionSDK-v4.3.44.zip",
                    checksum: "cecdda26e4fa3f64d25f79c1265b55a68a31f6a5ed4768d4cac225ed5378f032"
                ),
        .testTarget(
            name: "PressengerSDKTests",
            dependencies: ["PressengerSDK"]),
    ]
)
