class SwiftXcodeNio < Formula

  desc "Build Swift IO servers from within Xcode."
  homepage "https://swiftxcode.github.io"
  url "https://github.com/SwiftXcode/SwiftNIO_XcodeImage/archive/0.5.1.tar.gz"
  # curl -L https://github.com/SwiftXcode/SwiftNIO_XcodeImage/archive/0.5.1.tar.gz | shasum -a 256
  sha256 "8ef66a41b6fcca62eb7ff9a15ecedcf3dfd558d6de2d1b0004564872d062200f"
  
  depends_on "libressl"
  depends_on "swiftxcode/swiftxcode/swift-xcode"
  
  def install
    system "make", "prefix=#{prefix}", "install"
    ohai "Always remember to call \"swift xcode link-templates\" after installing images!"
  end
end
