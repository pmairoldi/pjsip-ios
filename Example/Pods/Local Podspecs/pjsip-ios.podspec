#
# Be sure to run `pod lib lint pjsip-ios.podspec' to ensure this is a
# valid spec and remove all comments before submitting the spec.
#
# Any lines starting with a # are optional, but encouraged
#
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = "pjsip-ios"
  s.version          = "0.1.1"
  s.summary          = "PJSIP for ios"
  s.description      = <<-DESC
                       Other pods for pjsip were just not in a stable state. So I am creating a new one.
                       DESC
  s.homepage         = "https://github.com/petester42/pjsip-ios.git"
  s.license          = 'MIT'
  s.author           = { "Pierre-Marc Airoldi" => "pierremarcairoldi@gmail.com" }
  s.source           = { :git => "https://github.com/petester42/pjsip-ios.git", :tag => s.version.to_s }
  s.social_media_url = 'https://twitter.com/petester42'

  s.platform     = :ios, '7.0'
  s.requires_arc = true

  s.public_header_files = 'Pod/pjsip-include/**'
  
  s.preserve_paths = 'Pod/pjsip-include/**/**/*{h,hpp}', 'Pod/pjsip-lib/*.a'
  
  s.libraries = 'g7221codec-arm-apple-darwin9', 'gsmcodec-arm-apple-darwin9', 'ilbccodec-arm-apple-darwin9', 'pj-arm-apple-darwin9', 'pjlib-util-arm-apple-darwin9', 'pjmedia-arm-apple-darwin9', 'pjmedia-audiodev-arm-apple-darwin9', 'pjmedia-codec-arm-apple-darwin9', 'pjmedia-videodev-arm-apple-darwin9', 'pjnath-arm-apple-darwin9', 'pjsip-arm-apple-darwin9', 'pjsip-simple-arm-apple-darwin9', 'pjsip-ua-arm-apple-darwin9', 'pjsua-arm-apple-darwin9', 'pjsua2-arm-apple-darwin9', 'resample-arm-apple-darwin9', 'speex-arm-apple-darwin9', 'srtp-arm-apple-darwin9'

  s.frameworks = 'CFNetwork', 'AudioToolbox', 'AVFoundation'

  s.header_mappings_dir = 'Pod'

  s.xcconfig = {
    'GCC_PREPROCESSOR_DEFINITIONS' => 'PJ_AUTOCONF=1',
    'HEADER_SEARCH_PATHS'  => '$(PODS_ROOT)/pjsip-ios/Pod/pjsip-include',
    'LIBRARY_SEARCH_PATHS' => '$(PODS_ROOT)/pjsip-ios/Pod/pjsip-lib'
  }
end