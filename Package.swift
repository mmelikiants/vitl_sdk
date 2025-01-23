// swift-tools-version: 6.0
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "vitl-sdk-plugin",
    platforms: [
            .iOS(.v14),
        ],
    products: [
        .library(
            name: "vitl-sdk-plugin",
            type: .dynamic,
            targets: ["vitl-sdk-plugin"]),
    ],
    targets: [
            .target(
                name: "vitl-sdk-plugin",
                dependencies: [
                    .target(name: "App", condition: .when(platforms: [.iOS])),
                    .target(name: "Flutter", condition: .when(platforms: [.iOS])),
                    .target(name: "biosensesignal_flutter_sdk", condition: .when(platforms: [.iOS])),
                    .target(name: "flutter_inappwebview_ios", condition: .when(platforms: [.iOS])),
                    .target(name: "OrderedSet", condition: .when(platforms: [.iOS])),
                    .target(name: "path_provider_foundation", condition: .when(platforms: [.iOS])),
                    .target(name: "permission_handler_apple", condition: .when(platforms: [.iOS])),
                    .target(name: "share_plus", condition: .when(platforms: [.iOS])),
                ]
            ),
            .binaryTarget(name: "App", path: "./Framework/App.xcframework"),
            .binaryTarget(name: "Flutter", path: "./Framework/Flutter.xcframework"),
                    .binaryTarget(name: "biosensesignal_flutter_sdk", path: "./Framework/biosensesignal_flutter_sdk.xcframework"),
                    .binaryTarget(name: "flutter_inappwebview_ios", path: "./Framework/flutter_inappwebview_ios.xcframework"),
                    .binaryTarget(name: "OrderedSet", path: "./Framework/OrderedSet.xcframework"),
                    .binaryTarget(name: "path_provider_foundation", path: "./Framework/path_provider_foundation.xcframework"),
                    .binaryTarget(name: "permission_handler_apple", path: "./Framework/permission_handler_apple.xcframework"),
                    .binaryTarget(name: "share_plus", path: "./Framework/share_plus.xcframework"),
         ]
//    targets: [
//        .target(
//            name: "vitl-sdk-plugin",
//            dependencies: ["App", "Flutter", "biosensesignal_flutter_sdk", "flutter_inappwebview_ios", "OrderedSet","path_provider_foundation", "permission_handler_apple", "share_plus"]),
//
//    ]
)
