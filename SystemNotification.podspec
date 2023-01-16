# Run `pod lib lint' to ensure this is a valid spec.

Pod::Spec.new do |s|
  s.name             = 'SystemNotification'
  s.version          = '0.6.0'
  s.swift_versions   = ['5.6']
  s.summary          = 'SystemNotification lets you mimic native iOS system notifications in your SwiftUI apps'

  s.description      = <<-DESC
  SystemNotification is a SwiftUI library that lets you mimic native iOS system notifications in your SwiftUI apps.
                       DESC

  s.homepage         = 'https://github.com/danielsaidi'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Daniel Saidi' => 'daniel.saidi@gmail.com' }
  s.source           = { :git => 'https://github.com/danielsaidi/SystemNotification.git', :tag => s.version.to_s }
  s.social_media_url = 'https://twitter.com/danielsaidi'

  s.swift_version = '5.6'
  s.ios.deployment_target = '14.0'
  s.macos.deployment_target = '11.0'
  s.tvos.deployment_target = '14.0'
  # s.watchos.deployment_target = '7.0'
  
  s.source_files = 'Sources/**/*.swift'
end
