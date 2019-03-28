class SwiftXcodeNio2 < Formula

  desc "Build SwiftNIO 2 servers from within Xcode."
  homepage "https://swiftxcode.github.io"
  url "https://github.com/SwiftXcode/SwiftNIO2_XcodeImage/archive/0.10.2.tar.gz"
  # curl -L https://github.com/SwiftXcode/SwiftNIO2_XcodeImage/archive/0.10.2.tar.gz | shasum -a 256
  sha256 "93f43940cf88775309fda35ef806282d2c2a3695e319ac5ae3c984d14b251302"
  
  depends_on "swiftxcode/swiftxcode/swift-xcode"
  
  def install
    system "make", "prefix=#{prefix}", "install"
    ohai "Always remember to call \"swift xcode link-templates\" after installing images!"
  end
end
