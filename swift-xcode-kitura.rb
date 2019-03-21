class SwiftXcodeKitura < Formula

  desc "Build Kitura from within Xcode."
  homepage "https://swiftxcode.github.io"
  url "https://github.com/SwiftXcode/Kitura_XcodeImage/archive/0.2.6.tar.gz"
  # curl -L https://github.com/SwiftXcode/Kitura_XcodeImage/archive/0.2.6.tar.gz | shasum -a 256
  sha256 "23ca95d76f229f3bc3ce466c8aab7d4248f4e67a14d5acb43c2b79ed5483eacb"
  
  depends_on "swiftxcode/swiftxcode/swift-xcode"
  
  def install
    # system "make", "all" ... no use
    ohai "Stay calm and grab a beer, this one time process will take a minute, or five ..."
    system "make", "prefix=#{prefix}", "install"
    ohai "Always remember to call \"swift xcode link-templates\" after installing images!"
  end
end
