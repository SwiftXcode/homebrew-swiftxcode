class SwiftXcodeKitura < Formula

  desc "Build Kitura from within Xcode."
  homepage "https://swiftxcode.github.io"
  url "https://github.com/SwiftXcode/Kitura_XcodeImage/archive/0.1.0.tar.gz"
  # curl -L https://github.com/SwiftXcode/Kitura_XcodeImage/archive/0.1.0.tar.gz | shasum -a 256
  sha256 "395408a3dc9c3db2b5c200b8722a13a60898c861633b99e6e250186adffd1370"
  
  depends_on "swiftxcode/swiftxcode/swift-xcode"
  
  def install
    system "make", "all"
    system "make", "prefix=#{prefix}", "install"
  end
end
