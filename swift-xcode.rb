class SwiftXcode < Formula

  desc "Build Swift Package Manager from within Xcode."
  homepage "https://swiftxcode.github.io"
  url "https://github.com/SwiftXcode/swift-xcode/archive/0.6.0.tar.gz"
  # curl -L https://github.com/SwiftXcode/swift-xcode/archive/0.6.0.tar.gz | shasum -a 256
  sha256 "89b214eca8b2269544745122e65604f2552e8767cc8da41e53aece1aca6612fc"
  
  depends_on "swiftxcode/swiftxcode/swift-progress"
  
  def install
    system "make", "all"
    system "make", "prefix=#{prefix}", "install"
  end
end
