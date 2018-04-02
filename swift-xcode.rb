class SwiftXcode < Formula

  desc "Build Swift Package Manager from within Xcode."
  homepage "https://swiftxcode.github.io"
  url "https://github.com/SwiftXcode/swift-xcode/archive/0.6.2.tar.gz"
  # curl -L https://github.com/SwiftXcode/swift-xcode/archive/0.6.2.tar.gz | shasum -a 256
  sha256 "c483e2276594673a305084565d5db7d55dfde4a5a3c75e5d81cd52977893c121"
  
  depends_on "swiftxcode/swiftxcode/swift-progress"
  
  def install
    system "make", "all"
    system "make", "prefix=#{prefix}", "install"
  end
end
