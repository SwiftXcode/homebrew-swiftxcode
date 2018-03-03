class SwiftXcodeKitura < Formula

  desc "Build Kitura from within Xcode."
  homepage "https://swiftxcode.github.io"
  url "https://github.com/SwiftXcode/Kitura_XcodeImage/archive/0.1.3.tar.gz"
  # curl -L https://github.com/SwiftXcode/Kitura_XcodeImage/archive/0.1.3.tar.gz | shasum -a 256
  sha256 "15ec4d367aee55cfde60d3875e3064cb29a2e80a953144a22f53a5b61a151cd6"
  
  depends_on "swiftxcode/swiftxcode/swift-xcode"
  
  def install
    # system "make", "all" ... no use
    ohai "Stay calm and grab a beer, this one time process will take a minute, or five ..."
    system "make", "prefix=#{prefix}", "install"
  end
end
