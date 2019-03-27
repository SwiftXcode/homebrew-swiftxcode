class SwiftXcodeNio < Formula

  desc "Build SwiftNIO 1 servers from within Xcode."
  homepage "https://swiftxcode.github.io"
  url "https://github.com/SwiftXcode/SwiftNIO1_XcodeImage/archive/0.9.7.tar.gz"
  # curl -L https://github.com/SwiftXcode/SwiftNIO_XcodeImage/archive/0.9.7.tar.gz | shasum -a 256
  sha256 "4ceacfd469db3c73989c1bc763276666e6405cceb9135a31f2776c36842a6d05"
  
  depends_on "libressl"
  depends_on "swiftxcode/swiftxcode/swift-xcode"
  
  def install
    system "make", "prefix=#{prefix}", "install"
    ohai "Always remember to call \"swift xcode link-templates\" after installing images!"
  end
end
