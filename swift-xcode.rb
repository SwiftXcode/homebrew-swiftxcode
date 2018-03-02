class SwiftXcode < Formula

  desc "Build Swift Package Manager from within Xcode."
  homepage "https://swiftxcode.github.io"
  url "https://github.com/SwiftXcode/swift-xcode/archive/0.5.1.tar.gz"
  # curl -L https://github.com/SwiftXcode/swift-xcode/archive/0.5.1.tar.gz | shasum -a 256
  sha256 "7030e62b0a76c30af3911ca60ee5efd04ea7f04ac8ebbccd2d272fa3bb0a3512"
  
  depends_on "swiftxcode/swiftxcode/swift-progress"
  
  def install
    system "make", "all"
    system "make", "prefix=#{prefix}", "install"
  end
end
