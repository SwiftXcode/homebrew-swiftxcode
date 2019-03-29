class SwiftXcodeNio2 < Formula

  desc "Build SwiftNIO 2 servers from within Xcode."
  homepage "https://swiftxcode.github.io"
  url "https://github.com/SwiftXcode/SwiftNIO2_XcodeImage/archive/0.10.3.tar.gz"
  # curl -L https://github.com/SwiftXcode/SwiftNIO2_XcodeImage/archive/0.10.3.tar.gz | shasum -a 256
  sha256 "a7fb95c78622d3c57132d51f3533a27a016d03a2e27f07a2a8ec2426b490bfbd"
  
  depends_on "swiftxcode/swiftxcode/swift-xcode"
  
  def install
    system "make", "prefix=#{prefix}", "install"
    ohai "Always remember to call \"swift xcode link-templates\" after installing images!"
  end
end
