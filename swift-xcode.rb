class SwiftXcode < Formula

  desc "Build Swift Package Manager from within Xcode."
  homepage "https://swiftxcode.github.io"
  url "https://github.com/SwiftXcode/swift-xcode/archive/0.5.9.tar.gz"
  # curl -L https://github.com/SwiftXcode/swift-xcode/archive/0.5.9.tar.gz | shasum -a 256
  sha256 "be099f7772f30811ee9254d7781a3ec32ab52a28a7986a7b9c78bd881c2dbc8f"
  
  depends_on "swiftxcode/swiftxcode/swift-progress"
  
  def install
    system "make", "all"
    system "make", "prefix=#{prefix}", "install"
  end
end
