Pod::Spec.new do |s|
  s.name         = "Moya-ObjectMapper"
  s.version      = "2.8-jx2"
  s.summary      = "ObjectMapper bindings for Moya"
  s.description  = <<-EOS
  [ObjectMapper](https://github.com/Hearst-DD/ObjectMapper) bindings for
  [Moya](https://github.com/Moya/Moya) for easier JSON serialization.
  Includes [RxSwift](https://github.com/ReactiveX/RxSwift/) bindings as well.
  Instructions on how to use it are in
  [the README](https://github.com/tospery/Moya-ObjectMapper).
  EOS
  s.homepage     = "https://github.com/tospery/Moya-ObjectMapper"
  s.license      = { :type => "MIT", :file => "LICENSE" }
  s.author             = { "tospery" => "tospery@gmail.com" }
  s.social_media_url   = "http://twitter.com/tospery"
  s.ios.deployment_target = '9.0'
  s.osx.deployment_target = '10.10'
  s.watchos.deployment_target = '3.0'
  s.tvos.deployment_target = '9.0'
  s.source       = { :git => "https://github.com/tospery/Moya-ObjectMapper.git", :tag => s.version }
  s.default_subspec = "Core"

  s.subspec "Core" do |ss|
    ss.source_files  = "Source/*.swift"
    ss.dependency "Moya", "14.0.0-alpha.1"
    ss.dependency "ObjectMapper", "3.5.1"
    ss.framework  = "Foundation"
  end

  s.subspec "RxSwift" do |ss|
    ss.source_files = "Source/RxSwift/*.swift"
    ss.dependency "Moya-ObjectMapper/Core"
    ss.dependency "RxSwift", "5.0.0"
    ss.dependency "Moya/RxSwift"
  end

  s.subspec "ReactiveSwift" do |ss|
    ss.source_files = "Source/ReactiveSwift/*.swift"
    ss.dependency "Moya-ObjectMapper/Core"
    ss.dependency "Moya/ReactiveSwift"
    ss.dependency "ReactiveSwift"
  end
end
