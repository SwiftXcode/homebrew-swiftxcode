class SwiftXcode < Formula

  desc "Build Swift Package Manager from within Xcode."
  homepage "https://swiftxcode.github.io"
  url "https://github.com/SwiftXcode/swift-xcode/archive/0.7.4.tar.gz"
  # curl -L https://github.com/SwiftXcode/swift-xcode/archive/0.7.4.tar.gz | shasum -a 256
  sha256 "60e660e161f523e8ffec573a26dfe641c361846ed09ee2ace323b70d648111bc"
  
  depends_on "swiftxcode/swiftxcode/swift-progress"
  
  def install
    system "make", "all"
    system "make", "prefix=#{prefix}", "install"
  end
end
