class SwiftXcodeNio1 < Formula

  desc "Build SwiftNIO 1 servers from within Xcode."
  homepage "https://swiftxcode.github.io"
  url "https://github.com/SwiftXcode/SwiftNIO1_XcodeImage/archive/0.9.9.tar.gz"
  # curl -L https://github.com/SwiftXcode/SwiftNIO_XcodeImage/archive/0.9.9.tar.gz | shasum -a 256
  sha256 "51e4fef0ca0deb95960497e5a0ea8eade8489d9f8f214c41f5ba643ce1af9448"
  
  depends_on "libressl"
  depends_on "swiftxcode/swiftxcode/swift-xcode"
  
  def install
    system "make", "prefix=#{prefix}", "install"
    ohai "Always remember to call \"swift xcode link-templates\" after installing images!"
  end
end
