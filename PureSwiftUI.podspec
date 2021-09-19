Pod::Spec.new do |spec|
    spec.name         = "PureSwiftUIDesign"
    spec.version      = "1.0.0-beta-5"
    spec.summary      = "PureSwiftUIDesign is a Swift package designed to enhance the experience of designing views and shapes in SwiftUI."
    spec.description  = <<-DESC
Creating paths in SwiftUI can be a bit of a pain. This is largely due to the calculation and creation of points that litter the resulting code not only making complex designs lengthy to write, but next to impossible to decode what's actually going on when you're reading it.

This package allows you to create incredibly complex and even animated designs quickly, while keeping the code simple.
                   DESC
    spec.homepage     = "https://github.com/CodeSlicing/pure-swift-ui-design"
    spec.license      = { :type => "MIT", :file => "Assets/Docs/LICENCE.md" }
    spec.author             = "Adam Fordyce"
    spec.social_media_url   = "https://twitter.com/CodeSlice"

    spec.ios.deployment_target = "13.0"
    spec.macos.deployment_target = "10.15"
    spec.tvos.deployment_target = "13.0"
    spec.watchos.deployment_target = "6.0"

    spec.source = { :git => "https://github.com/CodeSlicing/pure-swift-ui-design.git", :tag => "#{spec.version}" }

    spec.source_files  = "Sources/**/*.{swift}"
    spec.swift_version = "5.1"
    spec.framework  = "SwiftUI"

    end

end
