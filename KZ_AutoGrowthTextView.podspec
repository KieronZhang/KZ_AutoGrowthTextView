
Pod::Spec.new do |s|

    s.name = 'KZ_AutoGrowthTextView'
    s.version = '0.1'
    s.summary = 'iOS Auto Growth TextView.'
    s.homepage = 'https://github.com/KieronZhang/KZ_AutoGrowthTextView'
    s.license = {:type => 'MIT', :file => 'LICENSE'}
    s.author = {'KieronZhang.' => 'https://github.com/KieronZhang'}
    s.platform = :ios, '8.0'
    s.source = {:git => 'https://github.com/KieronZhang/KZ_AutoGrowthTextView.git', :tag => s.version, :submodules => true}
    s.xcconfig = {'OTHER_LDFLAGS' => '-ObjC'}
    s.frameworks = 'UIKit', 'Foundation'
    s.vendored_frameworks = 'KZ_AutoGrowthTextView/KZ_AutoGrowthTextViewFramework.framework'
    s.requires_arc = true

end
