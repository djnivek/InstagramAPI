Pod::Spec.new do |s|
  s.name         = "RxGramAPI"
  s.version      = "0.1"
  s.summary      = "API for RxGram"
  s.description  = <<-DESC
    This is the API provided for the RxGram project
  DESC
  s.homepage     = "https://github.com/djnivek/RxGram"
  s.license      = { :type => "MIT", :file => "LICENSE" }
  s.author             = { "Kevin Machado" => "machadokevin.dev@gmail.com" }
  s.social_media_url   = ""
  s.ios.deployment_target = "10.0"
  s.source       = { :git => ".git", :tag => s.version.to_s }
  s.source_files  = "Sources/**/*"
  s.frameworks  = "Foundation"
end
