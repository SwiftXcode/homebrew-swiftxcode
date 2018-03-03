class SwiftXcodeKitura < Formula

  desc "Build Kitura from within Xcode."
  homepage "https://swiftxcode.github.io"
  url "https://github.com/SwiftXcode/Kitura_XcodeImage/archive/0.1.1.tar.gz"
  # curl -L https://github.com/SwiftXcode/Kitura_XcodeImage/archive/0.1.1.tar.gz | shasum -a 256
  sha256 "405f41b538e65de1228c3381d596526a3537c02600d1969227ec64a06e0dae9c"
  
  depends_on "swiftxcode/swiftxcode/swift-xcode"
  
  def install
    # system "make", "all" ... no use
    system "make", "prefix=#{prefix}", "install"
  end
end
