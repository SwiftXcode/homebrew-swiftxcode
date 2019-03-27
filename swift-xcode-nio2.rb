class SwiftXcodeNio < Formula

  desc "Build SwiftNIO 2 servers from within Xcode."
  homepage "https://swiftxcode.github.io"
  url "https://github.com/SwiftXcode/SwiftNIO2_XcodeImage/archive/0.10.0.tar.gz"
  # curl -L https://github.com/SwiftXcode/SwiftNIO2_XcodeImage/archive/0.10.0.tar.gz | shasum -a 256
  sha256 "a5c7e3fcd52171ef2ea0c1a8ea4ac9be4f1d3e44c7980ef6d92695aae99fc901"
  
  depends_on "swiftxcode/swiftxcode/swift-xcode"
  
  def install
    system "make", "prefix=#{prefix}", "install"
    ohai "Always remember to call \"swift xcode link-templates\" after installing images!"
  end
end
