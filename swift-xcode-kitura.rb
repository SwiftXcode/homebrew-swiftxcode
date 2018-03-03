class SwiftXcodeKitura < Formula

  desc "Build Kitura from within Xcode."
  homepage "https://swiftxcode.github.io"
  url "https://github.com/SwiftXcode/Kitura_XcodeImage/archive/0.1.4.tar.gz"
  # curl -L https://github.com/SwiftXcode/Kitura_XcodeImage/archive/0.1.4.tar.gz | shasum -a 256
  sha256 "a52a0a7591a5dd5fdb85c151dcc7e1004a443609c43b5be8e241d350d87079c4"
  
  depends_on "swiftxcode/swiftxcode/swift-xcode"
  
  def install
    # system "make", "all" ... no use
    ohai "Stay calm and grab a beer, this one time process will take a minute, or five ..."
    system "make", "prefix=#{prefix}", "install"
  end
end
