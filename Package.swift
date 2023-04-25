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
                    url: "https://maven.pressenger.com/pods/PressengerSDK/PressengerSDK-v4.3.41.zip",
                    checksum: "7616f39ab2a489dcdceef0c9833d9e3e50dba5ee003056bf20e536151976d8a0"
                ),
        .binaryTarget(
                    name: "PressengerNotificationServiceExtensionSDK",
                    url: "https://maven.pressenger.com/pods/PressengerNotificationServiceExtensionSDK/PressengerNotificationServiceExtensionSDK-v4.3.35.zip",
                    checksum: "5d9375020a486cf96fed96745a889816566c4014dfe5e9473981dc99bad958ad"
                ),
        .binaryTarget(
                    name: "PressengerNotificationContentExtensionSDK",
                    url: "https://maven.pressenger.com/pods/PressengerNotificationContentExtensionSDK/PressengerNotificationContentExtensionSDK-v4.3.34.zip",
                    checksum: "c6c940ccde6e4f1cc0ce9e15fe4639a058b58223098bdab0b513c132d16aa0b2"
                ),
        .testTarget(
            name: "PressengerSDKTests",
            dependencies: ["PressengerSDK"]),
    ]
)
