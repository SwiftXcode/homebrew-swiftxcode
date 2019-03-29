class SwiftXcodeNio2 < Formula

  desc "Build SwiftNIO 2 servers from within Xcode."
  homepage "https://swiftxcode.github.io"
  url "https://github.com/SwiftXcode/SwiftNIO2_XcodeImage/archive/0.10.4.tar.gz"
  # curl -L https://github.com/SwiftXcode/SwiftNIO2_XcodeImage/archive/0.10.4.tar.gz | shasum -a 256
  sha256 "8bc974406c385b29987fba5d51b936421e84c36952324b9b210f5e8d2c31a256"
  
  depends_on "swiftxcode/swiftxcode/swift-xcode"
  
  def install
    system "make", "prefix=#{prefix}", "install"
    ohai "Always remember to call \"swift xcode link-templates\" after installing images!"
  end
end
