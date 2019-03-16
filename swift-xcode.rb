class SwiftXcode < Formula

  desc "Build Swift Package Manager from within Xcode."
  homepage "https://swiftxcode.github.io"
  url "https://github.com/SwiftXcode/swift-xcode/archive/0.7.3.tar.gz"
  # curl -L https://github.com/SwiftXcode/swift-xcode/archive/0.7.3.tar.gz | shasum -a 256
  sha256 "307e1d33b30e4d7c5284fbe4a38abf2e2591a501d0649d10093defb88f3cc4b9"
  
  depends_on "swiftxcode/swiftxcode/swift-progress"
  
  def install
    system "make", "all"
    system "make", "prefix=#{prefix}", "install"
  end
end
