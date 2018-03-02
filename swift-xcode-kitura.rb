class SwiftXcodeKitura < Formula

  desc "Build Kitura from within Xcode."
  homepage "https://swiftxcode.github.io"
  url "https://github.com/SwiftXcode/Kitura_XcodeImage/archive/0.1.0.tar.gz"
  # curl -L https://github.com/SwiftXcode/Kitura_XcodeImage/archive/0.1.0.tar.gz | shasum -a 256
  sha256 "6ec8ff6e929a3ffe3eb64bd741b2d8dbd8ba4c4e6eb3ec785ae437a9a4e00f76"
  
  depends_on "swiftxcode/swiftxcode/swift-xcode"
  
  def install
    system "make", "all"
    system "make", "prefix=#{prefix}", "install"
  end
end
