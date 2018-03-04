class SwiftXcode < Formula

  desc "Build Swift Package Manager from within Xcode."
  homepage "https://swiftxcode.github.io"
  url "https://github.com/SwiftXcode/swift-xcode/archive/0.5.11.tar.gz"
  # curl -L https://github.com/SwiftXcode/swift-xcode/archive/0.5.11.tar.gz | shasum -a 256
  sha256 "9e0c3f12cfb3f5848510d05dbbba3a49a2ce1cbfa7bbf687f35b61f4fffae2b9"
  
  depends_on "swiftxcode/swiftxcode/swift-progress"
  
  def install
    system "make", "all"
    system "make", "prefix=#{prefix}", "install"
  end
end
