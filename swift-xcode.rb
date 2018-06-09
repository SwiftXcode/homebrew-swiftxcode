class SwiftXcode < Formula

  desc "Build Swift Package Manager from within Xcode."
  homepage "https://swiftxcode.github.io"
  url "https://github.com/SwiftXcode/swift-xcode/archive/0.7.0.tar.gz"
  # curl -L https://github.com/SwiftXcode/swift-xcode/archive/0.7.0.tar.gz | shasum -a 256
  sha256 "5cc70ad26ef93bd6d3edc83e5160636dbf9d2d8bd8790746ac6d1dd0e42bafb2"
  
  depends_on "swiftxcode/swiftxcode/swift-progress"
  
  def install
    system "make", "all"
    system "make", "prefix=#{prefix}", "install"
  end
end
