# ArcXP
#
# Verifying:
# pod spec lint ArcXP.podspec --private --allow-warnings --sources=arc-partners,trunk --verbose
#
# Releasing:
# pod repo push arc-mobile-podspecs ArcXP.podspec --private --allow-warnings --skip-import-validation --sources=arc-partners,trunk --verbose

Pod::Spec.new do |spec|
  # Meta
  spec.name         = 'ArcXP'
  spec.version      = '0.1.0'
  spec.summary      = 'ArcXP SDK that includes Commerce, Content, and Video services'
  spec.author       = 'Arc XP, The Washington Post'
  spec.homepage     = 'https://arcxp.com/'
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
  spec.platforms = { :ios => "15.0", :tvos => "15.0"}
  spec.ios.deployment_target = 15.0
  spec.tvos.deployment_target = 15.0

  # The DESTINATION for the pod (or, in this case, the zipped files). Publishing the pod
  # does NOT zip the frameworks up and upload them to this location--you have to do that
  # manually.
  spec.source                  = { :http => "https://d3mh65msdilczf.cloudfront.net/home/iosArcXPSDK/version_#{spec.version}/ArcXP.zip" }

  # The path the frameworks in the SOURCE .ZIP that are going into the pod.
  spec.ios.vendored_frameworks = ['ArcXP.xcframework']
  spec.tvos.vendored_frameworks = ['ArcXP.xcframework']
  
end

