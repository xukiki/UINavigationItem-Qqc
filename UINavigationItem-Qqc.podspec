Pod::Spec.new do |s|

  s.license      = "MIT"
  s.author       = { "qqc" => "20599378@qq.com" }
  s.platform     = :ios, "8.0"
  s.requires_arc  = true

  s.name         = "UINavigationItem-Qqc"
  s.version      = "1.0.12"
  s.summary      = "UINavigationItem-Qqc"
  s.homepage     = "https://github.com/xukiki/UINavigationItem-Qqc"
  s.source       = { :git => "https://github.com/xukiki/UINavigationItem-Qqc.git", :tag => "#{s.version}" }
  
  s.source_files  = ["UINavigationItem-Qqc/*.{h,m}"]
  s.dependency  = "NSArray-Qqc"

end
