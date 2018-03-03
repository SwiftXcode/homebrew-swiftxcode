class SwiftXcodeKitura < Formula

  desc "Build Kitura from within Xcode."
  homepage "https://swiftxcode.github.io"
  url "https://github.com/SwiftXcode/Kitura_XcodeImage/archive/0.1.2.tar.gz"
  # curl -L https://github.com/SwiftXcode/Kitura_XcodeImage/archive/0.1.2.tar.gz | shasum -a 256
  sha256 "6dc8161f2f5f63ecb9bdf33f4bb16ce22f886bfd752fb61f5ca30dfe1bc6ad21"
  
  depends_on "swiftxcode/swiftxcode/swift-xcode"
  
  def install
    # system "make", "all" ... no use
    ohai "Stay calm and grab a beer, this one time process will take a minute, or five ..."
    system "make", "prefix=#{prefix}", "install"
  end
end
