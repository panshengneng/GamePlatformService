Pod::Spec.new do |s|
  s.name             = 'GamePlatformService'
  s.version          = '1.0.0-dev'
  s.summary          = '基础服务'
  s.description      = '基础服务'
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

  s.subspec 'Core' do |api|
    utils.subspec 'API' do |apple|
      ss.source_files = 'GamePlatformService/Core/Service/Apple/**/*'
    end
    utils.subspec 'Service' do |service|
      utils.subspec 'Apple' do |apple|
        ss.source_files = 'GamePlatformService/Core/Service/Apple/**/*'
        utils.subspec 'Pay' do |apple|
          ss.source_files = 'GamePlatformService/Core/Service/Apple/Pay/**/*'
        end
      end
      utils.subspec 'Facebook' do |apple|
        ss.source_files = 'GamePlatformService/Core/Service/Facebook/**/*'
      end
      utils.subspec 'Firebase' do |apple|
        ss.source_files = 'GamePlatformService/Core/Service/Firebase/**/*'
      end
      utils.subspec 'Google' do |apple|
        ss.source_files = 'GamePlatformService/Core/Service/Google/**/*'
      end
    end
  end
end
