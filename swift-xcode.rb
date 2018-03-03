class SwiftXcode < Formula

  desc "Build Swift Package Manager from within Xcode."
  homepage "https://swiftxcode.github.io"
  url "https://github.com/SwiftXcode/swift-xcode/archive/0.5.7.tar.gz"
  # curl -L https://github.com/SwiftXcode/swift-xcode/archive/0.5.7.tar.gz | shasum -a 256
  sha256 "fa22774c225792165f8c98a98c773ec6939fabc38324539714988c9cd4494a6b"
  
  depends_on "swiftxcode/swiftxcode/swift-progress"
  
  def install
    system "make", "all"
    system "make", "prefix=#{prefix}", "install"
  end
end
