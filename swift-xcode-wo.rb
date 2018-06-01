class SwiftXcodeWo < Formula

  desc "Build Swift WebObjects applications within Xcode."
  homepage "http://swiftobjects.org"
  url "https://github.com/SwiftObjects/SwiftObjects_XcodeImage/archive/0.0.3.tar.gz"
  # curl -L https://github.com/SwiftObjects/SwiftObjects_XcodeImage/archive/0.0.3.tar.gz | shasum -a 256
  sha256 "33c34c827fa311590f1add7c764d7bb9b08ebd687ee2f6a2768e78122091391e"
  
  depends_on "swiftxcode/swiftxcode/swift-xcode"
  
  def install
    system "make", "prefix=#{prefix}", "install"
    ohai "Always remember to call \"swift xcode link-templates\" after installing images!"
  end
end
