class SwiftXcodeWo < Formula

  desc "Build Swift WebObjects applications within Xcode."
  homepage "http://swiftobjects.org"
  url "https://github.com/SwiftObjects/SwiftObjects_XcodeImage/archive/0.7.0.tar.gz"
  # curl -L https://github.com/SwiftObjects/SwiftObjects_XcodeImage/archive/0.7.0.tar.gz | shasum -a 256
  sha256 "6b26b9cb49edc743a65c42c4e49f529e4a83c215774c49f710234c1918c1b8cf"
  
  depends_on "swiftxcode/swiftxcode/swift-xcode"
  
  def install
    system "make", "prefix=#{prefix}", "install"
    ohai "Always remember to call \"swift xcode link-templates\" after installing images!"
  end
end
