// swift-tools-version: 5.9
//
// Dependencies.swift
// Copyright (c) 2022 Nemlig.com. All rights reserved.
//
import PackageDescription

#if TUIST
import ProjectDescription
import ProjectDescriptionHelpers

let packageSettings = PackageSettings(
    baseSettings: .targetSettings,
    projectOptions: [
        "LocalSwiftPackage": .options(disableSynthesizedResourceAccessors: false)
    ]
)

#endif

let dependencies = Package(
    name: "PackageName",
    dependencies: [
        .package(url: "https://github.com/firebase/firebase-ios-sdk.git",
                 .upToNextMajor(from: "10.23.1")),
    ]
)
