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
  s.version          = "0.1.2"
  s.summary          = "PJSIP for ios"
  s.description      = <<-DESC
                       Other pods for pjsip were just not in a stable state. So I am creating a new one.
                       DESC
  s.homepage         = "https://github.com/petester42/pjsip-ios.git"
  s.license          = 'MIT'
  s.author           = { "Pierre-Marc Airoldi" => "pierremarcairoldi@gmail.com" }
  s.source           = { :git => "https://github.com/petester42/pjsip-ios.git", :tag => s.version.to_s }
  s.social_media_url = 'https://twitter.com/petester42'

  s.platform     = :ios, '6.0'
  s.requires_arc = false
  s.dependency 'OpenSSL-Universal', '1.0.1.j'

  s.public_header_files = 'Pod/pjsip-include/**'
  
  s.preserve_paths = 'Pod/pjsip-include/**/**/*{h,hpp}'
  
  s.vendored_libraries = 'Pod/pjsip-lib/*.a'

  s.frameworks = 'CFNetwork', 'AudioToolbox', 'AVFoundation'

  s.header_mappings_dir = 'Pod'

  s.xcconfig = {
    'GCC_PREPROCESSOR_DEFINITIONS' => 'PJ_AUTOCONF=1',
    'HEADER_SEARCH_PATHS'  => '$(PODS_ROOT)/pjsip-ios/Pod/pjsip-include $(SOURCE_ROOT)/../Pod/pjsip-include'
  }
  
end