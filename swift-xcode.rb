class SwiftXcode < Formula

  desc "Build Swift Package Manager from within Xcode."
  homepage "https://swiftxcode.github.io"
  url "https://github.com/SwiftXcode/swift-xcode/archive/0.7.1.tar.gz"
  # curl -L https://github.com/SwiftXcode/swift-xcode/archive/0.7.1.tar.gz | shasum -a 256
  sha256 "520ad801eeb07d0c7897a54edf43062a819e7c4039645710d12415c3d402484e"
  
  depends_on "swiftxcode/swiftxcode/swift-progress"
  
  def install
    system "make", "all"
    system "make", "prefix=#{prefix}", "install"
  end
end
