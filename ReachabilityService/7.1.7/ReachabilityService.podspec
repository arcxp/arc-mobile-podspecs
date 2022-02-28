# You have to specify the sources when linting
# pod spec lint ReachabilityService.podspec --private --sources=https://github.com/WPMedia/arc-mobile-specs.git,https://github.com/CocoaPods/Specs.git

Pod::Spec.new do |s|
  s.name         = 'ReachabilityService'
  s.version      = '7.1.7'
  s.summary      = 'Closed source: Monitors reachability status.'

  s.homepage     = 'https://github.com/WPMedia/ios-reachability'
  s.license      = {
      :type => 'Commercial',
      :text => <<-LICENSE
                © 2018 The Washington Post. All rights reserved.
      LICENSE
    }
  s.author       = 'The Washington Post'

  s.swift_version = '4.0'
  s.ios.deployment_target = '9.0'
  s.ios.vendored_frameworks = 'ReachabilityService.framework'

  s.source       = { :http => "https://arcmobile.arcpublishing.com/artifacts/ios/ReachabilityService-#{s.version}.zip" }
  s.framework    = 'Foundation', 'SystemConfiguration'
  s.requires_arc = true
end

