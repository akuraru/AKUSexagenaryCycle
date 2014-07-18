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
  s.version          = "0.1.0"
  s.summary          = "AKUSexagenaryCycle is cal sexagenary."
  s.description      = <<-DESC
                        AKUSexagenaryCycle is cal sexagenary cycle.
                       DESC
  s.homepage         = "https://github.com/akuraru/AKUSexagenaryCycle"
  # s.screenshots     = "www.example.com/screenshots_1", "www.example.com/screenshots_2"
  s.license          = 'MIT'
  s.author           = { "akuraru" => "akuraru@gmail.com" }
  s.source           = { :git => "#{s.homepage}/.git", :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/akuraru'

  s.platform     = :ios, '6.0'
  s.requires_arc = true

  s.source_files = 'Pod/Classes'
  # s.resources = 'Pod/Assets/*.png'

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  s.dependency 'NSDate-Escort'
  s.dependency 'AZDateBuilder'
end
