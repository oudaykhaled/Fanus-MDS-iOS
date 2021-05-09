Pod::Spec.new do |spec|

  spec.name         = "MDS"
  spec.version      = "1.0.0"
  spec.summary      = "MDS framework"
  spec.description  = "MDS is a framework to get from it all styling and components."
  spec.homepage     = "https://github.com/oudaykhaled/Fanus-MDS-iOS"
  spec.license      = "MIT"
  spec.author       = { "Ouday Khaled" => "ouday@fanusdigital.com" }
  spec.platform     = :ios, "13.0"
  spec.source       = { :git => "https://github.com/oudaykhaled/Fanus-MDS-iOS.git", :tag => "1.0.0}" }
  spec.source_files = "MDS/**/*"

end
