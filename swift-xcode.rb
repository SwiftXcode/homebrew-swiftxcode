class SwiftXcode < Formula

  desc "Build Swift Package Manager from within Xcode."
  homepage "https://swiftxcode.github.io"
  url "https://github.com/SwiftXcode/swift-xcode/archive/0.5.8.tar.gz"
  # curl -L https://github.com/SwiftXcode/swift-xcode/archive/0.5.8.tar.gz | shasum -a 256
  sha256 "b675204e2bc6f39f1a1326237314ec194bf4ff26efecf63c0e616477428d5fab"
  
  depends_on "swiftxcode/swiftxcode/swift-progress"
  
  def install
    system "make", "all"
    system "make", "prefix=#{prefix}", "install"
  end
end
