class SwiftXcodeNio < Formula

  desc "Build Swift IO servers from within Xcode."
  homepage "https://swiftxcode.github.io"
  url "https://github.com/SwiftXcode/SwiftNIO_XcodeImage/archive/0.4.1.tar.gz"
  # curl -L https://github.com/SwiftXcode/SwiftNIO_XcodeImage/archive/0.4.1.tar.gz | shasum -a 256
  sha256 "d1e76cb9e133497051e1b03e2233ad13aca22cc1c78ec81c00ee171a47fa1449"
  
  depends_on "libressl"
  depends_on "swiftxcode/swiftxcode/swift-xcode"
  
  def install
    system "make", "prefix=#{prefix}", "install"
    ohai "Always remember to call \"swift xcode link-templates\" after installing images!"
  end
end
