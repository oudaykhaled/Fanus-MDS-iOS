Pod::Spec.new do |spec|

  spec.name         = "MDS"
  spec.version      = "1.0.20"
  spec.summary      = "This a MDS framework for iOS"
  spec.description  = "MDS framework is used to get all the styles and components from it"
  spec.homepage     = "https://github.com/oudaykhaled/Fanus-MDS-iOS"
  spec.license      = "MIT"
  spec.author       = { "Marc Helou" => "marcb.helou@gmail.com" }
  spec.platform     = :ios, "13.0"
  spec.source       = { :git => "https://github.com/oudaykhaled/Fanus-MDS-iOS.git", :tag => "#{spec.version}" }
  s.dependency 'Resolver'
  spec.source_files = "MDS/**/*.{swift}"

end
