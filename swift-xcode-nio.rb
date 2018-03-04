class SwiftXcodeNio < Formula

  desc "Build Swift IO servers from within Xcode."
  homepage "https://swiftxcode.github.io"
  url "https://github.com/SwiftXcode/SwiftNIO_XcodeImage/archive/0.1.0.tar.gz"
  # curl -L https://github.com/SwiftXcode/SwiftNIO_XcodeImage/archive/0.1.0.tar.gz | shasum -a 256
  sha256 "6b88a5b64e400ae6c08929f2776dc4ed95c1c59e219153514f10a85353669d5f"
  
  depends_on "libressl"
  depends_on "swiftxcode/swiftxcode/swift-xcode"
  
  def install
    system "make", "prefix=#{prefix}", "install"
  end
end
