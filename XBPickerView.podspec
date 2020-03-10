
Pod::Spec.new do |s|
  
  s.name             = 'XBPickerView'
  s.version          = '1.0.0'
  s.summary          = '自定义选择器'

  s.description      = <<-DESC
TODO: Add long description of the pod here.
                       DESC
  
  s.homepage         = 'https://github.com/LiuSky/XBPickerView'
  s.license          = 'MIT'
  s.author           = { 'xiaobin liu'=> '327847390@qq.com' }
  s.source           = { :git => 'https://github.com/LiuSky/XBPickerView.git', :tag => s.version.to_s }
  
  s.requires_arc = true
  s.static_framework = true
  s.swift_version         = '5.0'
  s.ios.deployment_target = '9.0'
  s.default_subspec = 'Source'
  
  s.subspec 'Source' do |ss|
    ss.source_files = 'XBPickerView/Classes/*'
  end
end
