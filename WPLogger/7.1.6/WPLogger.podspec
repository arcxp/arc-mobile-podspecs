# You have to specify the sources when linting
# pod spec lint WPLogger.podspec --no-private --allow-warnings --sources=git@github.com:WPMedia/arc-mobile-specs.git,https://github.com/CocoaPods/Specs.git

Pod::Spec.new do |s|

  s.name         = 'WPLogger'
  s.version      = '7.1.6'
  s.summary      = 'A singleton background instance to quietly and seamlessly upload log files while your apps are in production.'

  s.homepage     = 'https://github.com/WPMedia/ios-log-uploader'
  s.license      = {
      :type => 'Commercial',
      :text => <<-LICENSE
                © 2014 The Washington Post. All rights reserved.
      LICENSE
    }
  s.author       = 'The Washington Post'

  s.swift_version = '4.2'
  s.ios.deployment_target = '9.0'
  s.ios.vendored_frameworks = 'WPLogger.framework'

  s.source       = { :http => "https://arcmobile.arcpublishing.com/artifacts/ios/WPLogger-#{s.version}.zip" }
  s.framework    = 'AdSupport', 'UIKit', 'Foundation', 'CoreGraphics', 'CoreFoundation', 'SystemConfiguration'
  s.requires_arc = true
  
  s.ios.dependency 'ReachabilityService'
  s.dependency 'CocoaLumberjack', '= 3.4.2'
  s.dependency 'CocoaLumberjack/Core', '= 3.4.2'
end
