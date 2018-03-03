class SwiftXcode < Formula

  desc "Build Swift Package Manager from within Xcode."
  homepage "https://swiftxcode.github.io"
  url "https://github.com/SwiftXcode/swift-xcode/archive/0.5.4.tar.gz"
  # curl -L https://github.com/SwiftXcode/swift-xcode/archive/0.5.4.tar.gz | shasum -a 256
  sha256 "c8530f619dd8a21d5357774fcf3ab8476f6538e8009398a8aff1f5a180c1a35e"
  
  depends_on "swiftxcode/swiftxcode/swift-progress"
  
  def install
    system "make", "all"
    system "make", "prefix=#{prefix}", "install"
  end
end
