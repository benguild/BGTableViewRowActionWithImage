Pod::Spec.new do |s|
  s.name             = "BGTableViewRowActionWithImage"
  s.version          = "0.2.0"
  s.homepage         = "https://github.com/benguild/BGTableViewRowActionWithImage"
  s.screenshots      = "https://raw.github.com/benguild/BGTableViewRowActionWithImage/master/demo.jpg"
  s.summary          = "A variation on the iOS 8.0+ `UITableViewRowAction` to support icons, with text below."
  s.license          = 'MIT'
  s.author           = { "Ben Guild" => "email@benguild.com" }
  s.source           = { :git => "https://github.com/benguild/BGTableViewRowActionWithImage.git", :tag => s.version.to_s }
  s.source_files     = 'BGTableViewRowActionWithImage.{h,m}'
  s.social_media_url = 'https://twitter.com/benguild'

  s.platform     = :ios, '8.0'
  s.requires_arc = true

  s.frameworks = 'UIKit'

end
