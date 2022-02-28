# GoogleAdManager-PAL-iOS-SDK
#
# Verifying:
# pod spec lint GoogleAdManager-PAL-iOS-SDK.podspec --private --allow-warnings --sources=wapopartners,master
#
# Releasing:
# pod repo push wapopartners GoogleAdManager-PAL-iOS-SDK.podspec --private --allow-warnings --sources=wapopartners,master

Pod::Spec.new do |spec|
  # Meta
  spec.name         = 'GoogleAdManager-PAL-iOS-SDK'
  spec.version      = '0.1'
  spec.summary      = 'PAL SDK for iOS'
  spec.description  = 'The Programmatic Access Libraries (PAL) are lightweight SDKs that provide discrete access to targeting signals for Google Ad Manager programmatic ads.'
  spec.author       = 'Arc Publishing, The Washington Post'
  spec.homepage     = 'https://developers.google.com/ad-manager/pal/ios'
  spec.license      = {
    :type => 'Commercial',
    :text => <<-LICENSE
    © The Washington Post. All rights reserved.
    LICENSE
  }

  # Deployment Targets
  spec.platforms = { :ios => "11.0"}
  spec.ios.deployment_target = 11.0

  spec.source                  = { :http => "https://imasdk.googleapis.com/native/downloads/pal-ios-v2.2.2.zip" }

  spec.ios.vendored_frameworks  = 'ProgrammaticAccessLibrary.framework'

end

