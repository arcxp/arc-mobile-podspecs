# You have to specify the sources when linting
# pod spec lint AnalyticsKit.podspec --allow-warnings --sources=git@github.com:WPMedia/arc-mobile-specs.git,https://github.com/CocoaPods/Specs.git

Pod::Spec.new do |s|
  s.name         = 'AnalyticsKit'
  s.version      = '7.1.6'
  s.summary      = 'Closed source: AnalyticsKit'

  s.description  = <<-DESC
                   An iOS library for handling Analytics
                   DESC

  s.homepage     = 'https://github.com/WPMedia/ios-analyticskit'

  s.license      = {
      :type => 'Commercial',
      :text => <<-LICENSE
                © 2016 The Washington Post. All rights reserved.
      LICENSE
  }

  s.author       = 'The Washington Post'
  s.ios.deployment_target = '9.0'
  s.ios.vendored_frameworks = 'AnalyticsKit.framework'

  s.source       = { :http => "https://arcmobile.arcpublishing.com/artifacts/ios/AnalyticsKit-#{s.version}.zip" }

  s.ios.frameworks   = 'Foundation', 'CoreFoundation'
  s.requires_arc = true

  # Internal
  s.ios.dependency 'ReachabilityService', "#{s.version}"

  # NOTE: Currently Tronc is the only consumer of this framework.
  # TODO: Figure out how to create separate binaries that have each individual
  # profile associated with them for the generic Pods
  s.ios.dependency 'Ensighten'

end
