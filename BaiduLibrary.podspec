Pod::Spec.new do |s|
 s.name = "BaiduLibrary"
 s.version = "0.0.1"
 s.summary = "A short description of BaiduLibrary."
 s.description = <<-DESC
 A longer description of BaiduLibrary in Markdown format.
 * Think: Why did you write this? What is the focus? What does it do?
 * CocoaPods will be using this to generate tags, and improve search results.
 * Try to keep it short, snappy and to the point.
 * Finally, don't worry about the indent, CocoaPods strips it!
 DESC
 s.homepage = "https://github.com/changcunyuan/BaiduLibrary"
 s.license = "MIT"
 s.author = { "changcunyuan" => "409593434@qq.com" }
 s.source = { :git => "https://github.com/changcunyuan/BaiduLibrary.git", :tag => "0.0.1" }
 s.source_files = "BaiduLibrary/Src", "BaiduLibrary/Src/**/*.{h,m}"
 s.requires_arc = true
 # s.framework = "SomeFramework"
 # s.frameworks = "SomeFramework", "AnotherFramework"
 # s.library = "iconv"
 # s.libraries = "iconv", "xml2"
 # s.dependency "JSONKit", "~> 1.4"
 # s.dependency "AFNetworking", "~> 2.2.4"
 end