// swift-tools-version:5.3
import PackageDescription

let package = Package(
    name: "GCDWebServer",
    platforms: [
        .iOS(.v9),
        .tvOS(.v9)
    ],
    products: [
        .library(
            name: "GCDWebServer",
            targets: ["GCDWebServer"]
        )
    ],
    targets: [
        .target(
            name: "GCDWebServer",
            path: "GCDWebServer",
            exclude: [
                "Info-iOS.plist",
                "Info-tvOS.plist",
                "Info-macOS.plist"
            ],
            sources: ["Core", "Requests", "Responses", "Operations", "MIME"]
        )
    ],
    swiftLanguageVersions: [.v5]
)
