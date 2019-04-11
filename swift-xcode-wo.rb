class SwiftXcodeWo < Formula

  desc "Build Swift WebObjects applications within Xcode."
  homepage "http://swiftobjects.org"
  url "https://github.com/SwiftObjects/SwiftObjects_XcodeImage/archive/0.7.2.tar.gz"
  # curl -L https://github.com/SwiftObjects/SwiftObjects_XcodeImage/archive/0.7.2.tar.gz | shasum -a 256
  sha256 "e8d46a0b1d0da935f5505202099736eb60b40c3bc66cb5466c9c397f63b1a9ea"
  
  depends_on "swiftxcode/swiftxcode/swift-xcode"
  
  def install
    system "make", "prefix=#{prefix}", "install"
    ohai "Always remember to call \"swift xcode link-templates\" after installing images!"
  end
end
