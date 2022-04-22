// swift-tools-version:4.1
// Generated automatically by Perfect Assistant 2
// Date: 2018-03-28 18:54:02 +0000
import PackageDescription

let package = Package(
	name: "TroHTTPServer",
	products: [
		.library(name: "TroHTTPServer", targets: ["TroHTTPServer"])
	],
	dependencies: [
		.package(url: "https://github.com/PerfectlySoft/Perfect-Net.git", from: "3.1.2"),
		.package(url: "https://github.com/Charlieatinstinct/Ch-Perfect-HTTP.git", from:"3.0.24"),
		.package(url: "https://github.com/PerfectlySoft/Perfect-CZlib-src.git", from: "0.0.0")
	],
	targets: [
		.target(name: "PerfectTTPParser", dependencies: []),
		.target(name: "TroHTTPServer", dependencies: ["PerfectTTPParser", "PerfectNet", "Ch-Perfect-HTTP", "PerfectCZlib"]),
		.testTarget(name: "PerfectHTTPServerTests", dependencies: ["TroHTTPServer"])
	]
)
