
Pod::Spec.new do |s|

    s.name = 'KZ_AutoGrowthTextView'
    s.version = '0.1.1'
    s.summary = 'iOS Auto Growth TextView.'
    s.homepage = 'https://github.com/KieronZhang/KZ_AutoGrowthTextView'
    s.license = {:type => 'MIT', :file => 'LICENSE'}
    s.author = {'KieronZhang' => 'https://github.com/KieronZhang'}

    s.source = {:git => 'https://github.com/KieronZhang/KZ_AutoGrowthTextView.git', :tag => s.version, :submodules => true}
    s.xcconfig = {'OTHER_LDFLAGS' => '-ObjC'}
    s.requires_arc = true

    s.ios.frameworks = 'Foundation', 'UIKit'

    s.ios.deployment_target = '8.0'

    s.ios.vendored_frameworks = 'KZ_AutoGrowthTextView/KZ_AutoGrowthTextView_iOS.framework'

end
