class SwiftProgress < Formula

  desc "Visualize Swift Package Manager progress in a window."
  homepage "https://swiftxcode.github.io"
  url "https://github.com/SwiftXcode/swift-progress/archive/0.9.2.tar.gz"
  # curl -L https://github.com/SwiftXcode/swift-progress/archive/0.9.2.tar.gz | shasum -a 256
  sha256 "1b2e87c8e4c152db3f3bd7933f907fb6cb7df038efc69b5598f2e5576791b711"
  
  def install
    system "make", "all"
    system "make", "prefix=#{prefix}", "install"
  end
end
