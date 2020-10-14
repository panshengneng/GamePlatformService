Pod::Spec.new do |s|
  s.name             = 'magiciossdk'
  s.version          = '1.0.0-dev'
  s.summary          = 'magic基础服务'
  s.description      = 'magic基础服务'
  s.homepage         = "https://www.52magic.com"
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'panshengneng@gmail.com' => 'panshengneng@gmail.com' }
  s.source           = { :git => "https://github.com/panshengneng/MagicIOSSDK.git" }

  s.frameworks = 'Foundation'
  # s.dependency 'Firebase/Analytics'
  s.ios.deployment_target = '9.0'
  s.library = 'stdc++'
  s.source_files = 'Magic/*{h,m,mm}'
  s.requires_arc = true

  s.subspec 'API' do |core|
     core.source_files = "Magic/API/*{h,m}"
  end
end
