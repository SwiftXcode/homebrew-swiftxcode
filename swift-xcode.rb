class SwiftXcode < Formula

  desc "Build Swift Package Manager from within Xcode."
  homepage "https://swiftxcode.github.io"
  url "https://github.com/SwiftXcode/swift-xcode/archive/0.5.3.tar.gz"
  # curl -L https://github.com/SwiftXcode/swift-xcode/archive/0.5.3.tar.gz | shasum -a 256
  sha256 "714ed0ff56e26ffd568faf70253a14c36ec10bae824fe27e524d546b86e9400e"
  
  depends_on "swiftxcode/swiftxcode/swift-progress"
  
  def install
    system "make", "all"
    system "make", "prefix=#{prefix}", "install"
  end
end
