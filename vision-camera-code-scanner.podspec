require "json"

package = JSON.parse(File.read(File.join(__dir__, "package.json")))

Pod::Spec.new do |s|
  s.name         = "vision-camera-code-scanner"
  s.version      = package["version"]
  s.summary      = package["description"]
  s.homepage     = package["homepage"]
  s.license      = package["license"]
  s.authors      = package["author"]

  s.platforms    = { :ios => "15.6" }
  s.source       = { :git => "https://github.com/rodgomesc/vision-camera-code-scanner.git", :tag => "#{s.version}" }

  s.public_header_files = "ios/**/*.h"

  # Framework configuration for static frameworks
  s.static_framework = true

    s.pod_target_xcconfig = {
    "USE_HEADERMAP" => "YES",
    "HEADER_SEARCH_PATHS" => "\"$(PODS_TARGET_SRCROOT)/ReactCommon\" \"$(PODS_TARGET_SRCROOT)\" \"$(PODS_ROOT)/RCT-Folly\" \"$(PODS_ROOT)/boost\" \"$(PODS_ROOT)/boost-for-react-native\" \"$(PODS_ROOT)/DoubleConversion\" \"$(PODS_ROOT)/Headers/Private/React-Core\" \"$(PODS_ROOT)/../../node_modules/react-native-reanimated/Common/cpp\" \"$(PODS_ROOT)/VisionCameraOld\" ",
    "GCC_PREPROCESSOR_DEFINITIONS[config=Release]" => "$(inherited) NDEBUG=1",
    "DEFINES_MODULE" => "YES"
  }

  s.xcconfig = {
    "CLANG_CXX_LANGUAGE_STANDARD" => "c++17",
    "HEADER_SEARCH_PATHS" => "\"$(PODS_ROOT)/boost\" \"$(PODS_ROOT)/boost-for-react-native\" \"$(PODS_ROOT)/glog\" \"$(PODS_ROOT)/RCT-Folly\" \"${PODS_ROOT}/Headers/Public/React-hermes\" \"${PODS_ROOT}/Headers/Public/hermes-engine\"",
    "OTHER_CFLAGS" => "$(inherited)" + " " + folly_flags,
    "DEFINES_MODULE" => "YES"
  }

  s.requires_arc = true

  # All source files including Swift
  s.source_files = [
    "ios/**/*.{m,mm,h,swift}",
    "cpp/**/*.{cpp,h}"
  ]

  s.dependency "React-Core"
  s.dependency "GoogleMLKit/BarcodeScanning"
  s.dependency "VisionCameraOld"
end
