class SwiftXcodeNio2 < Formula

  desc "Build SwiftNIO 2 servers from within Xcode."
  homepage "https://swiftxcode.github.io"
  url "https://github.com/SwiftXcode/SwiftNIO2_XcodeImage/archive/0.10.1.tar.gz"
  # curl -L https://github.com/SwiftXcode/SwiftNIO2_XcodeImage/archive/0.10.1.tar.gz | shasum -a 256
  sha256 "442a2222d41abca98717dbf836495326afa6a44a2557b59cd9e6542dac54e468"
  
  depends_on "swiftxcode/swiftxcode/swift-xcode"
  
  def install
    system "make", "prefix=#{prefix}", "install"
    ohai "Always remember to call \"swift xcode link-templates\" after installing images!"
  end
end
