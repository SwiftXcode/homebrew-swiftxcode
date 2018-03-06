class SwiftXcode < Formula

  desc "Build Swift Package Manager from within Xcode."
  homepage "https://swiftxcode.github.io"
  url "https://github.com/SwiftXcode/swift-xcode/archive/0.5.13.tar.gz"
  # curl -L https://github.com/SwiftXcode/swift-xcode/archive/0.5.13.tar.gz | shasum -a 256
  sha256 "4b6b027433e1b773adb72172d6e7fa43c9989d1de4a53b843d4864624e59363d"
  
  depends_on "swiftxcode/swiftxcode/swift-progress"
  
  def install
    system "make", "all"
    system "make", "prefix=#{prefix}", "install"
  end
end
