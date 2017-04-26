#
# Be sure to run `pod lib lint PodTest.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'PodTest'
  s.version          = '0.1.0'
  s.summary          = 'A short description of PodTest.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
TODO: Add long description of the pod here.
                       DESC

  s.homepage         = 'https://github.com/wuzhentao/PodTest'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'wuzhentao' => 'wuzhentao@lianjia.com' }
  s.source           = { :git => 'https://github.com/wuzhentao/PodTest.git', :commit => c327a12f5128f2090a4a8c7dcc2f759e92175e2d }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '8.0'
  s.requires_arc = true

  # s.source_files = 'PodTest/Classes/*.{h,m}'
  s.source_files = 'Pod/Products/Headers'
  
  s.public_header_files = 'Pod/Products/Headers/*.h'
  s.ios.vendored_frameworks = 'Pod/Products/PodTestBinary.framework'
  # s.resource_bundles = {
  #   'PodTest' => ['PodTest/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
   s.dependency 'AFNetworking'
   s.dependency 'BaiduMapKit'
end
