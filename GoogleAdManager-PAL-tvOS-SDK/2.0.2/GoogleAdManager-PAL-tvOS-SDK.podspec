# GoogleAdManager-PAL-tvOS-SDK
#
# Verifying:
# pod spec lint GoogleAdManager-PAL-tvOS-SDK.podspec --private --allow-warnings --sources=wapopartners,master
#
# Releasing:
# pod repo push wapopartners GoogleAdManager-PAL-tvOS-SDK.podspec --private --allow-warnings --sources=wapopartners,master

Pod::Spec.new do |spec|
  # Meta
  spec.name         = 'GoogleAdManager-PAL-tvOS-SDK'
  spec.version      = '2.0.2'
  spec.summary      = 'PAL SDK for tvOS'
  spec.description  = 'The Programmatic Access Libraries (PAL) are lightweight SDKs that provide discrete access to targeting signals for Google Ad Manager programmatic ads.'
  spec.author       = 'Arc Publishing, The Washington Post'
  spec.homepage     = 'https://developers.google.com/ad-manager/pal/tvos'
  spec.license      = {
    :type => 'Commercial',
    :text => <<-LICENSE
    © The Washington Post. All rights reserved.
    LICENSE
  }

  # Deployment Targets
  spec.platforms = { :tvos => "11.0"}
  spec.tvos.deployment_target = 11.0

  spec.source                  = { :http => "https://imasdk.googleapis.com/native/downloads/pal-tvos-v#{spec.version}.zip" }

  spec.tvos.vendored_frameworks  = 'ProgrammaticAccessLibrary.framework'

end

