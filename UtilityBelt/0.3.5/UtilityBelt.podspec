Pod::Spec.new do |s|
  s.name         = 'UtilityBelt'
  s.version      = '0.3.5'
  s.summary      = 'Binary pod: UtilityBelt for iOS'
  s.description  = 'Common code used by the iOS team at The Washington Post'
  s.homepage     = 'https://github.com/WPMedia/ios-utilitybelt'
  s.author       = 'The Washington Post'
  s.platform     = :ios, '9.0'
  s.license      = {
        :type => 'Commercial',
        :text => <<-LICENSE
                  © 2016-2018 The Washington Post. All rights reserved.
        LICENSE
    }
  s.swift_version = '4.0'
  s.ios.vendored_frameworks = 'UtilityBelt.framework'
  s.source = { :http => "https://s3.amazonaws.com/arc-native-apps/artifacts/ios/UtilityBelt-#{s.version}.zip" }

end
