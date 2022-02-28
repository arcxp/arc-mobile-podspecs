# OMSDK_Washpost
#
# Verifying:
# pod spec lint OMSDK_Washpost.podspec --private --allow-warnings --sources=wapopartners,master
#
# Releasing:
# pod repo push wapopartners OMSDK_Washpost.podspec --private --allow-warnings --sources=wapopartners,master

Pod::Spec.new do |spec|
  # Meta
  spec.name         = 'OMSDK_Washpost'
  spec.version      = '1.3.15'
  spec.summary      = 'Interactive Advertising Bureau\'s Open Measurement SDK for WashPost'
  spec.description  = 'Validates compliance with the Interactive Advertising Bureau\'s standards for iOS ads'
  spec.author       = 'Interactive Advertising Bureau, generated for the Washington Post'
  spec.homepage     = 'https://tools.iabtechlab.com'
  spec.license      = {
    :type => 'Commercial',
    :text => <<-LICENSE
    Open Measurement (OM) License, V 1.0
    LICENSE
  }

  # Deployment Targets
  spec.platforms = { :ios => "11.0"}
  spec.ios.deployment_target = 11.0

  spec.source                  = { :http => "https://arc-native-apps.s3.amazonaws.com/arc-video-sdk/OMSDK_Washpost-#{spec.version}.zip" }

  spec.ios.vendored_frameworks  = 'OMSDK_Washpost.framework'

end

