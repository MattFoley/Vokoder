Pod::Spec.new do |s|
  s.name         = “Vokoder”
  s.version      = “1.0.0”
  s.platform     = :ios
  s.ios.deployment_target = "6.0"
  s.summary      = "VOKAL's Core Data Manager"
  s.homepage     = "https://github.com/vokalinteractive/Vokoder"
  s.license      = { :type => "MIT", :file => "LICENSE.txt"}
  s.author       = { "VOKAL Interactive" => "hello@vokalinteractive.com" }
  s.source       = { :git => "https://github.com/vokalinteractive/Vokoder.git", :tag => "#{s.version}" }
  s.source_files = "VOKCoreDataManager/*.{h,m}"
  s.framework    = "CoreData"
  s.requires_arc = true
  s.dependency 'iCarousel', '~> 1.7.3'
end
