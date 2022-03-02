# OpenMeasurementSDK
#
# Verifying:
# pod spec lint OpenMeasurementSDK.podspec --private --allow-warnings --sources=wapopartners,trunk
#
# Releasing:
# pod repo push wapopartners OpenMeasurementSDK.podspec --private --allow-warnings --sources=wapopartners,trunk

Pod::Spec.new do |spec|
  # Meta
  spec.name         = 'OpenMeasurementSDK'
  spec.version      = '1.3.15'
  spec.summary      = 'Interactive Advertising Bureau\'s Open Measurement SDK for iOS'
  spec.description  = 'Open Measurement is an industry standard for web and mobile ad measurement.'
  spec.author       = 'Interactive Advertising Bureau'
  spec.homepage     = 'https://tools.iabtechlab.com/omsdk'
  spec.license      = {
    :type => 'Commercial',
    :file => 'omsdk-ios/OMLICENSE'
  }

  # Deployment Targets
  spec.platforms = { :ios => "11.0"}
  spec.ios.deployment_target = 11.0

  spec.source                  = { :http => "https://arc-native-apps.s3.amazonaws.com/arc-video-sdk/omsdk-ios-#{spec.version}.zip" }

  spec.ios.vendored_frameworks  = 'omsdk-ios/OMSDK_Washpost.framework'

end
