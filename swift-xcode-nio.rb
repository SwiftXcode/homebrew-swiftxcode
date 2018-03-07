class SwiftXcodeNio < Formula

  desc "Build Swift IO servers from within Xcode."
  homepage "https://swiftxcode.github.io"
  url "https://github.com/SwiftXcode/SwiftNIO_XcodeImage/archive/0.1.3.tar.gz"
  # curl -L https://github.com/SwiftXcode/SwiftNIO_XcodeImage/archive/0.1.3.tar.gz | shasum -a 256
  sha256 "9806e04f750adef137c754e90d961791c9450c6cb4f0950c833486edb6799204"
  
  depends_on "libressl"
  depends_on "swiftxcode/swiftxcode/swift-xcode"
  
  def install
    system "make", "prefix=#{prefix}", "install"
    ohai "Always remember to call \"swift xcode link-templates\" after installing images!"
  end
end
