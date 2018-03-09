class SwiftXcodeServerApi < Formula

  desc "Build Swift Server API servers from within Xcode."
  homepage "https://swiftxcode.github.io"
  url "https://github.com/SwiftXcode/SwiftServerAPI_XcodeImage/archive/0.2.0.tar.gz"
  # curl -L https://github.com/SwiftXcode/SwiftServerAPI_XcodeImage/archive/0.2.0.tar.gz | shasum -a 256
  sha256 "36d4278737eb75ee6e11fddb2aa9eb735e7ab00f6bd19be1d5b7a49abf6032bb"
  
  depends_on "swiftxcode/swiftxcode/swift-xcode"
  
  def install
    system "make", "prefix=#{prefix}", "install"
    ohai "Always remember to call \"swift xcode link-templates\" after installing images!"
  end
end
