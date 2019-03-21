class SwiftXcode < Formula

  desc "Build Swift Package Manager from within Xcode."
  homepage "https://swiftxcode.github.io"
  url "https://github.com/SwiftXcode/swift-xcode/archive/0.7.5.tar.gz"
  # curl -L https://github.com/SwiftXcode/swift-xcode/archive/0.7.5.tar.gz | shasum -a 256
  sha256 "d534320b4a0e40bfb88e8d2eeb2e8b7e5a608f41e87da259d7a719a4f8077800"
  
  depends_on "swiftxcode/swiftxcode/swift-progress"
  
  def install
    system "make", "all"
    system "make", "prefix=#{prefix}", "install"
  end
end
