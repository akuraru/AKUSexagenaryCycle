#
# Be sure to run `pod lib lint AKUSexagenaryCycle.podspec' to ensure this is a
# valid spec and remove all comments before submitting the spec.
#
# Any lines starting with a # are optional, but encouraged
#
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = "AKUSexagenaryCycle"
  s.version          = "0.2.1"
  s.summary          = "AKUSexagenaryCycle is cal sexagenary."
  s.description      = <<-DESC
                        AKUSexagenaryCycle is cal sexagenary cycle.
                       DESC
  s.homepage         = "https://github.com/akuraru/AKUSexagenaryCycle"
  # s.screenshots     = "www.example.com/screenshots_1", "www.example.com/screenshots_2"
  s.license          = 'MIT'
  s.author           = { "akuraru" => "akuraru@gmail.com" }
  s.source           = { :git => "https://github.com/akuraru/AKUSexagenaryCycle.git", :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/akuraru'

  s.platform     = :ios, '10.0'
  s.requires_arc = true

  s.source_files = 'Pod/Classes'
end
