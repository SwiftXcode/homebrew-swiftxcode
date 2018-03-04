class SwiftXcode < Formula

  desc "Build Swift Package Manager from within Xcode."
  homepage "https://swiftxcode.github.io"
  url "https://github.com/SwiftXcode/swift-xcode/archive/0.5.10.tar.gz"
  # curl -L https://github.com/SwiftXcode/swift-xcode/archive/0.5.10.tar.gz | shasum -a 256
  sha256 "2c2561aa7523b18e6fcd59867cd93a10b6d962c6d6a3e85890fd7629b2318098"
  
  depends_on "swiftxcode/swiftxcode/swift-progress"
  
  def install
    system "make", "all"
    system "make", "prefix=#{prefix}", "install"
  end
end
