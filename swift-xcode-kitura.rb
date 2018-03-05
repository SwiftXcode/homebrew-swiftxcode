class SwiftXcodeKitura < Formula

  desc "Build Kitura from within Xcode."
  homepage "https://swiftxcode.github.io"
  url "https://github.com/SwiftXcode/Kitura_XcodeImage/archive/0.1.5.tar.gz"
  # curl -L https://github.com/SwiftXcode/Kitura_XcodeImage/archive/0.1.5.tar.gz | shasum -a 256
  sha256 "4d7f968ac0bd56c8dee85525d2db408deddcb90a33a0330c138449f3f93199ad"
  
  depends_on "swiftxcode/swiftxcode/swift-xcode"
  
  def install
    # system "make", "all" ... no use
    ohai "Stay calm and grab a beer, this one time process will take a minute, or five ..."
    system "make", "prefix=#{prefix}", "install"
    ohai "Always remember to call \"swift xcode link-templates\" after installing images!"
  end
end
