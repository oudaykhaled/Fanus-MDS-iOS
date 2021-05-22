Pod::Spec.new do |s|

# 1
s.platform = :ios
s.ios.deployment_target = '13.0'
s.name = "MDS"
s.summary = "MDS lets a user select an ice cream flavor."
s.requires_arc = true

# 2
s.version = "1.0.5"

# 3
s.license = { :type => "MIT", :file => "LICENSE" }

# 4 - Replace with your name and e-mail address
s.author = { "Marc Helou" => "marcb.helou@gmail.com" }

# 5 - Replace this URL with your own GitHub page's URL (from the address bar)
s.homepage = "https://github.com/oudaykhaled/Fanus-MDS-iOS"

# 6 - Replace this URL with your own Git URL from "Quick Setup"
s.source = { :git => "https://github.com/oudaykhaled/Fanus-MDS-iOS.git",
             :tag => "#{s.version}" }

# 8
s.source_files = "MDS/**/*"

end
