# ArcMediaPlayer
#
# Verifying:
# pod spec lint ArcMediaPlayer.podspec --private --allow-warnings --sources=wapopartners,master
#
# Releasing:
# pod repo push wapopartners ArcMediaPlayer.podspec --private --allow-warnings --sources=wapopartners,master

Pod::Spec.new do |spec|
  # Meta
  spec.name         = 'ArcMediaPlayer'
  spec.version      = '0.5.10'
  spec.summary      = 'An embeddable Arc Video Center client and media player for iOS and tvOS.'
  spec.author       = 'Arc Publishing, The Washington Post'
  spec.homepage     = 'https://github.com/wapopartners/ArcMediaSampleAppiOS'
  spec.license      = {
    :type => 'Commercial',
    :text => <<-LICENSE
    © The Washington Post. All rights reserved.
    LICENSE
  }

  # Settings
  spec.source              = { :git => 'git@github.com:WPMedia/arc-video-sdk-ios.git', :tag => spec.version.to_s }
  spec.static_framework    = true
  spec.swift_version       = '5.0'
  spec.cocoapods_version   = '>= 1.7.0'

  # Deployment Targets
  spec.platforms = { :ios => "11.0", :tvos => "11.0" }
  spec.ios.deployment_target = 11.0
  spec.tvos.deployment_target = 11.0

  # The DESTINATION for the pod (or, in this case, the zipped files). Publishing the pod
  # does NOT zip the frameworks up and upload them to this location--you have to do that
  # manually.
  spec.source                  = { :http => "https://arc-native-apps.s3.amazonaws.com/arc-video-sdk/ArcMediaPlayer-#{spec.version}.zip" }

  # The path the frameworks IN THE SOURCE .ZIP that are going into the pod. You have to
  # zip these up into a file called ArcMediaPlayeriOS-#{version number}.zip and upload it
  # to the location specified in spec.source, above.
  spec.ios.vendored_frameworks  = 'ArcMediaPlayer/iOS/ArcMediaPlayeriOS.framework'
  spec.tvos.vendored_frameworks = 'ArcMediaPlayer/tvOS/ArcMediaPlayertvOS.framework'
  
  # Third-Party Dependencies
  spec.ios.dependency 'GoogleAds-IMA-iOS-SDK', '~> 3.11'
  spec.tvos.dependency 'GoogleAds-IMA-tvOS-SDK', '~> 4.2'

end

