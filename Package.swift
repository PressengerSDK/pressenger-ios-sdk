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
                    url: "https://maven2.pressenger.com/pods/PressengerSDK/PressengerSDK-v4.3.43.zip",
                    checksum: "3a15bc0b474e18317ebd293b811d559bc8fd80826fe0e4158cc411d5d20aea15"
                ),
        .binaryTarget(
                    name: "PressengerNotificationServiceExtensionSDK",
                    url: "https://maven2.pressenger.com/pods/PressengerSDK/PressengerNotificationServiceExtensionSDK-v4.3.42.zip",
                    checksum: "225fee729f479b843a5b8cf22212a9473b7aee5b22168ff4703dac206d912c7c"
                ),
        .binaryTarget(
                    name: "PressengerNotificationContentExtensionSDK",
                    url: "https://maven2.pressenger.com/pods/PressengerSDK/PressengerNotificationContentExtensionSDK-v4.3.34.zip",
                    checksum: "c6c940ccde6e4f1cc0ce9e15fe4639a058b58223098bdab0b513c132d16aa0b2"
                ),
        .testTarget(
            name: "PressengerSDKTests",
            dependencies: ["PressengerSDK"]),
    ]
)
