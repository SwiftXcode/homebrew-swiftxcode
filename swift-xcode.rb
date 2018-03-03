class SwiftXcode < Formula

  desc "Build Swift Package Manager from within Xcode."
  homepage "https://swiftxcode.github.io"
  url "https://github.com/SwiftXcode/swift-xcode/archive/0.5.6.tar.gz"
  # curl -L https://github.com/SwiftXcode/swift-xcode/archive/0.5.6.tar.gz | shasum -a 256
  sha256 "5171a5992e73777a38e3a73281981154af2c45b48b428767bf34022b9384d573"
  
  depends_on "swiftxcode/swiftxcode/swift-progress"
  
  def install
    system "make", "all"
    system "make", "prefix=#{prefix}", "install"
  end
end
