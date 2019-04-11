class SwiftXcodeWo < Formula

  desc "Build Swift WebObjects applications within Xcode."
  homepage "http://swiftobjects.org"
  url "https://github.com/SwiftObjects/SwiftObjects_XcodeImage/archive/0.7.3.tar.gz"
  # curl -L https://github.com/SwiftObjects/SwiftObjects_XcodeImage/archive/0.7.3.tar.gz | shasum -a 256
  sha256 "8f47868aa672a17a705f4b7074774815f66cd9446a60185bbbd15be9b6f68b9f"
  
  depends_on "swiftxcode/swiftxcode/swift-xcode"
  
  def install
    system "make", "prefix=#{prefix}", "install"
    ohai "Always remember to call \"swift xcode link-templates\" after installing images!"
  end
end
