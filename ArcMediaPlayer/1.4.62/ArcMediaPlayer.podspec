# ArcMediaPlayer
#
# Verifying:
# pod spec lint ArcMediaPlayer.podspec --private --allow-warnings --sources=wapopartners,trunk
#
# Releasing:
# pod repo push wapopartners ArcMediaPlayer.podspec --private --allow-warnings --sources=wapopartners,trunk

Pod::Spec.new do |spec|
  # Meta
  spec.name         = 'ArcMediaPlayer'
  spec.version      = '1.4.62'
  spec.summary      = 'An embeddable Arc Video Center client and media player for iOS and tvOS.'
  spec.author       = 'Arc Publishing, The Washington Post'
  spec.homepage     = 'https://github.com/wapopartners/arcxp-video-ios'
  spec.license      = {
    :type => 'Commercial',
    :text => <<-LICENSE
    © The Washington Post. All rights reserved.
    LICENSE
  }

  # Settings
  spec.static_framework    = true
  spec.swift_version       = '5.0'
  spec.cocoapods_version   = '>= 1.7.0'

  # Deployment Targets
  spec.platforms = { :ios => "11.0", :tvos => "11.0" }
  spec.ios.deployment_target = 11.0
  spec.tvos.deployment_target = 11.0

  spec.pod_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64', 
    'EXCLUDED_ARCHS[sdk=appletvsimulator*]' => 'arm64' }
  spec.user_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64', 
    'EXCLUDED_ARCHS[sdk=appletvsimulator*]' => 'arm64' }

  # The DESTINATION for the pod (or, in this case, the zipped files). Publishing the pod
  # does NOT zip the frameworks up and upload them to this location--you have to do that
  # manually.
  spec.source                  = { :http => "https://arc-mobile-sdks.s3.amazonaws.com/home/iosVideoContentSDK/version_/deploy.zip" }

  # The path the frameworks IN THE SOURCE .ZIP that are going into the pod. You have to
  # zip these up into a file called deploy.zip and upload it
  # to the location specified in spec.source, above.
  spec.ios.vendored_frameworks = ['deploy/Frameworks/ArcXPVideo.xcframework', 'deploy/Frameworks/GoogleInteractiveMediaAds.xcframework', 'deploy/Frameworks/OMSDK_Washpost.xcframework', 'deploy/Frameworks/ProgrammaticAccessLibrary.xcframework']
  spec.tvos.vendored_frameworks = ['deploy/Frameworks/ArcXPVideo.xcframework', 'deploy/Frameworks/GoogleInteractiveMediaAds.xcframework', 'deploy/Frameworks/ProgrammaticAccessLibrary.xcframework']
  
end
