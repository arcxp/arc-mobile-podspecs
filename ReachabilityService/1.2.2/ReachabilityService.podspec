# You have to specify the sources when linting
# pod spec lint ReachabilityService.podspec --private --sources=https://github.com/WPMedia/arc-mobile-specs.git,https://github.com/CocoaPods/Specs.git

Pod::Spec.new do |s|
  s.name         = 'ReachabilityService'
  s.version      = '1.2.2'
  s.summary      = 'Closed source: Monitors reachability status.'

  s.homepage     = 'https://github.com/WPMedia/ios-reachability'
  s.license      = {
      :type => 'Commercial',
      :text => <<-LICENSE
                © 2018 The Washington Post. All rights reserved.
      LICENSE
    }
  s.author       = 'The Washington Post'

  s.swift_version = '4.2'
  s.ios.deployment_target = '9.0'
  s.ios.vendored_frameworks = 'ReachabilityService.framework'

  s.source       = { :http => "https://s3.amazonaws.com/arc-native-apps/artifacts/ios/ReachabilityService-#{s.version}.zip" }
  s.framework    = 'Foundation', 'SystemConfiguration'
  s.requires_arc = true
end
