Pod::Spec.new do |s|
  s.name         = "ZDURLSchemeInspector"
  s.version      = "0.1.0"
  s.summary      = "A delightful URL Scheme inspector for iOS in Objective-C."
  s.homepage     = "https://github.com/0dayZh/ZDURLSchemeInspector"
  s.license      = 'MIT'
  s.author       = { "0dayZh" => "0day.zh@gmail.com" }
  s.ios.deployment_target = '7.0'
  s.source       = { :git => "https://github.com/0dayZh/ZDURLSchemeInspector.git", :tag => s.version }

  s.public_header_files = 'ZDURLSchemeInspector/*.h'
  s.source_files = 'ZDURLSchemeInspector/*.{h,m}'
  s.requires_arc = true
  s.framework    = 'MobileCoreServices'
end
