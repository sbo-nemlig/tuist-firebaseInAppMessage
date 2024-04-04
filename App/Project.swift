import ProjectDescription
import ProjectDescriptionHelpers

let project = Project(
    name: "App",
    settings: .projectSettings,
    targets: [
        .target(
            name: "App",
            destinations: .iOS,
            product: .app,
            bundleId: "io.tuist.app",
            infoPlist: .default,
            sources: "Sources/App/**",
            dependencies: [
                .external(name: "FirebaseInAppMessaging-Beta"),
            ],
            settings: .targetSettings
        ),
       
    ],
    schemes: Scheme.allSchemes(for: ["App"], executable: "App")
)
