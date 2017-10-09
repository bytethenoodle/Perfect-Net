// swift-tools-version:4.0
//
//  Package.swift
//  PerfectNet
//
//  Created by Kyle Jessup on 2016-05-02.
//	Copyright (C) 2016 PerfectlySoft, Inc.
//
//===----------------------------------------------------------------------===//
//
// This source file is part of the Perfect.org open source project
//
// Copyright (c) 2015 - 2016 PerfectlySoft Inc. and the Perfect project authors
// Licensed under Apache License v2.0
//
// See http://perfect.org/licensing.html for license information
//
//===----------------------------------------------------------------------===//
//

import PackageDescription

#if os(Linux)
let package = Package(
    name: "PerfectNet",
    products: [
        .library(name: "PerfectNet", targets: ["PerfectNet"])
    ],
    dependencies: [
        .package(url: "https://github.com/bytethenoodle/Perfect-Crypto.git", .exact("3.0.2")),
        .package(url: "https://github.com/PerfectlySoft/Perfect-LinuxBridge.git", .upToNextMajor(from: "3.0.0")),
        .package(url: "https://github.com/bytethenoodle/Perfect-Thread.git", .upToNextMajor(from: "3.0.1")),
    ],
    targets: [
        .target(name: "PerfectNet", dependencies: ["PerfectCrypto", "LinuxBridge", "PerfectThread"])
    ]
)
#else
let package = Package(
    name: "PerfectNet",
    products: [
        .library(name: "PerfectNet", targets: ["PerfectNet"])
    ],
    dependencies: [
            .package(url: "https://github.com/bytethenoodle/Perfect-Crypto.git", .exact("3.0.2")),
            .package(url: "https://github.com/bytethenoodle/Perfect-Thread.git", .upToNextMajor(from: "3.0.1")),
        ],
    targets: [
        .target(name: "PerfectNet", dependencies: ["PerfectCrypto", "PerfectThread"])
    ]
)
#endif
