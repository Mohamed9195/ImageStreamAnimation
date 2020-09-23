
Pod::Spec.new do |spec|

  spec.name         = "ImageStreamAnimation"
  spec.version      = "0.0.2"
  spec.summary      = "A short description of ImageStreamAnimation."

spec.summary      = "Like Facebook Live Stream Images"
spec.description  = "We'll be using a UIBezierPath to execute our animation."
spec.homepage     = "https://github.com/Mohamed9195/ImageStreamAnimation"
spec.license      = "MIT"
spec.authors      = { "Mohamed Hashem" => "mohamedabdalwahab588@gmail.com" }
spec.platform     = :ios, "12.0"
spec.ios.deployment_target = "12.0"
spec.source       = { :git => "https://github.com/Mohamed9195/ImageStreamAnimation.git", :tag => "#{spec.version}" }
spec.source_files  = "ImageStreamAnimation"
spec.exclude_files = "Classes/Exclude"
spec.resources  = "ImageStreamAnimation/*.{xib,png}"

spec.subspec 'App' do |app|
app.source_files = 'ImageStreamAnimation/**/*.swift'
end

spec.swift_version = "4.2"

end
