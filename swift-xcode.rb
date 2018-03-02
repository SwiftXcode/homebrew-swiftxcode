class SwiftXcode < Formula

  desc "Build Swift Package Manager from within Xcode."
  homepage "https://swiftxcode.github.io"
  url "https://github.com/SwiftXcode/swift-xcode/archive/0.5.2.tar.gz"
  # curl -L https://github.com/SwiftXcode/swift-xcode/archive/0.5.2.tar.gz | shasum -a 256
  sha256 "625411100c7404f53c68ac618a75d404e298d2a4d2504a75a1099646ac955be1"
  
  depends_on "swiftxcode/swiftxcode/swift-progress"
  
  def install
    system "make", "all"
    system "make", "prefix=#{prefix}", "install"
  end
end
