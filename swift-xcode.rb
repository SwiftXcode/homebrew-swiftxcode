class SwiftXcode < Formula

  desc "Build Swift Package Manager from within Xcode."
  homepage "https://swiftxcode.github.io"
  url "https://github.com/SwiftXcode/swift-xcode/archive/0.6.1.tar.gz"
  # curl -L https://github.com/SwiftXcode/swift-xcode/archive/0.6.1.tar.gz | shasum -a 256
  sha256 "e17b4f14b986d5bfaa562c706c7b5fffaecca55682ef0bea8c0e8eb428a95a66"
  
  depends_on "swiftxcode/swiftxcode/swift-progress"
  
  def install
    system "make", "all"
    system "make", "prefix=#{prefix}", "install"
  end
end
