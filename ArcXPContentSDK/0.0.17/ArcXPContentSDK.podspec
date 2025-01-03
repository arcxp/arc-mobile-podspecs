# ArcXPContentSDK
#
# Verifying:
# pod spec lint ArcXPContentSDK.podspec --private --allow-warnings --sources=arc-partners,trunk --verbose
#
# Releasing:
# pod repo push arc-mobile-podspecs ArcXPContentSDK.podspec --private --allow-warnings --skip-import-validation --sources=arc-partners,trunk --verbose

Pod::Spec.new do |spec|
  # Meta
  spec.name         = 'ArcXPContentSDK'
  spec.version      = '0.0.17'
  spec.summary      = 'ArcXP Content SDK'
  spec.author       = 'ArcXP, The Washington Post'
  spec.homepage     = 'https://github.com/'
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
  spec.platforms = { :ios => "14.0", :tvos => "14.0" }
  spec.ios.deployment_target = 14.0
  spec.tvos.deployment_target = 14.0

  # The DESTINATION for the pod (or, in this case, the zipped files). Publishing the pod
  # does NOT zip the frameworks up and upload them to this location--you have to do that
  # manually.
  spec.source                  = { :http => "https://arc-mobile-sdks.s3.amazonaws.com/home/iosContentSDK/version_test/ArcXPContentSDK.zip" }

  # The path the frameworks IN THE SOURCE .ZIP that are going into the pod. You have to
  # zip these up into a file called deploy.zip and upload it
  # to the location specified in spec.source, above.
  spec.ios.vendored_frameworks = ['ArcXPContentSDK.xcframework']
  spec.tvos.vendored_frameworks = ['ArcXPContentSDK.xcframework']
  
end

