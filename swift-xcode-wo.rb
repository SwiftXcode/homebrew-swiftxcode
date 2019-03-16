class SwiftXcodeWo < Formula

  desc "Build Swift WebObjects applications within Xcode."
  homepage "http://swiftobjects.org"
  url "https://github.com/SwiftObjects/SwiftObjects_XcodeImage/archive/0.5.4.tar.gz"
  # curl -L https://github.com/SwiftObjects/SwiftObjects_XcodeImage/archive/0.5.4.tar.gz | shasum -a 256
  sha256 "371b5b57f99e97ff58a51b5ae4a405bce05f99c16d28f2295cee1fb1adfe1ece"
  
  depends_on "swiftxcode/swiftxcode/swift-xcode"
  
  def install
    system "make", "prefix=#{prefix}", "install"
    ohai "Always remember to call \"swift xcode link-templates\" after installing images!"
  end
end
