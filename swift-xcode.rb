class SwiftXcode < Formula

  desc "Build Swift Package Manager from within Xcode."
  homepage "https://swiftxcode.github.io"
  url "https://github.com/SwiftXcode/swift-xcode/archive/0.5.12.tar.gz"
  # curl -L https://github.com/SwiftXcode/swift-xcode/archive/0.5.12.tar.gz | shasum -a 256
  sha256 "0d92547679ad6ae0bcfda8e6a6c002dbb1422d80d7dd7878f9fb1fe62167498b"
  
  depends_on "swiftxcode/swiftxcode/swift-progress"
  
  def install
    system "make", "all"
    system "make", "prefix=#{prefix}", "install"
  end
end
