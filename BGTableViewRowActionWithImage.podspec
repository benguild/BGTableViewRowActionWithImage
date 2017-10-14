Pod::Spec.new do |s|
  s.name             = "BGTableViewRowActionWithImage"
  s.version          = "0.4.2"
  s.homepage         = "https://github.com/benguild/BGTableViewRowActionWithImage"
  s.screenshots      = "https://raw.github.com/benguild/BGTableViewRowActionWithImage/master/demo.jpg"
  s.summary          = "A variation on the iOS 8-10 (not supported in 11+) `UITableViewRowAction` to support icons, with text below. Similar to the iOS 9 Mail app."
  s.license          = 'MIT'
  s.author           = { "Ben Guild" => "email@benguild.com", "Tom Kraina" => "me@tomkraina.com" }
  s.source           = { :git => "https://github.com/benguild/BGTableViewRowActionWithImage.git", :tag => s.version.to_s }
  s.source_files     = 'BGTableViewRowActionWithImage.{h,m}'
  s.social_media_url = 'https://twitter.com/benguild'

  s.platform     = :ios, '8.0'
  s.requires_arc = true

  s.framework = 'UIKit'

end
