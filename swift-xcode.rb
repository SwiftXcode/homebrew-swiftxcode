class SwiftXcode < Formula

  desc "Build Swift Package Manager from within Xcode."
  homepage "https://swiftxcode.github.io"
  url "https://github.com/SwiftXcode/swift-xcode/archive/0.5.5.tar.gz"
  # curl -L https://github.com/SwiftXcode/swift-xcode/archive/0.5.5.tar.gz | shasum -a 256
  sha256 "6b926a7ca7dcd8ef137d0849233352750b6f372cfaa558c49c647715a383ff79"
  
  depends_on "swiftxcode/swiftxcode/swift-progress"
  
  def install
    system "make", "all"
    system "make", "prefix=#{prefix}", "install"
  end
end
