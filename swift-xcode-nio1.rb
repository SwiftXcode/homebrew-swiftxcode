class SwiftXcodeNio1 < Formula

  desc "Build SwiftNIO 1 servers from within Xcode."
  homepage "https://swiftxcode.github.io"
  url "https://github.com/SwiftXcode/SwiftNIO1_XcodeImage/archive/0.9.10.tar.gz"
  # curl -L https://github.com/SwiftXcode/SwiftNIO_XcodeImage/archive/0.9.10.tar.gz | shasum -a 256
  sha256 "548b5de7efd311287fd773b9c8db88ac960ff6b7549720426f045ad2a698a060"
  
  depends_on "libressl"
  depends_on "swiftxcode/swiftxcode/swift-xcode"
  
  def install
    system "make", "prefix=#{prefix}", "install"
    ohai "Always remember to call \"swift xcode link-templates\" after installing images!"
  end
end
