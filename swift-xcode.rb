class SwiftXcode < Formula

  desc "Build Swift Package Manager from within Xcode."
  homepage "https://swiftxcode.github.io"
  url "https://github.com/SwiftXcode/swift-xcode/archive/0.5.0.tar.gz"
  # curl -L https://github.com/SwiftXcode/swift-xcode/archive/0.5.0.tar.gz | shasum -a 256
  sha256 "052a043615e3872d1f804aa357095caae3d37ff7a1c3929f22655f3bc2060eb4"
  
  depend_on "swiftxcode/swiftxcode/swift-progress"
  
  def install
    system "make", "all"
    system "make", "prefix=#{prefix}", "install"
  end
end
