class SwiftXcodeNio < Formula

  desc "Build Swift IO servers from within Xcode."
  homepage "https://swiftxcode.github.io"
  url "https://github.com/SwiftXcode/SwiftNIO_XcodeImage/archive/0.1.1.tar.gz"
  # curl -L https://github.com/SwiftXcode/SwiftNIO_XcodeImage/archive/0.1.1.tar.gz | shasum -a 256
  sha256 "f4f085650387c70aba253000d211830ec91cf3f9df823d3be4d2ec66c0f45cf4"
  
  depends_on "libressl"
  depends_on "swiftxcode/swiftxcode/swift-xcode"
  
  def install
    system "make", "prefix=#{prefix}", "install"
  end
end
