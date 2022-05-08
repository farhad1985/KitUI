Pod::Spec.new do |s|
  s.name             = 'KitUI'
  s.version          = '1.1.1'
  s.summary          = 'KitUI created by : farhad faramarzi'

 
  s.homepage         = 'https://github.com/farhad1985/KitUI'
  s.author           = { 'Farhad Faramarzi' => 'farhad.public@gmail.com' }
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.source           = { :git => 'https://github.com/farhad1985/KitUI.git', :tag => s.version.to_s }
 
  s.ios.deployment_target = '10.0'
  s.source_files = 'KitUI/**/*'
  s.exclude_files = 'KitUI/*.plist'
  s.swift_version = '5'

end
