class SwiftProgress < Formula

  desc "Visualize Swift Package Manager progress in a window."
  homepage "https://swiftxcode.github.io"
  url "https://github.com/SwiftXcode/swift-progress/archive/0.9.0.tar.gz"
  # curl -L https://github.com/SwiftXcode/swift-progress/archive/0.9.0.tar.gz | shasum -a 256
  sha256 "e4e2c94868973104d82ff766ff572e4d600a5a45e9f9692fcdfe39c238ad1787"
  
  def install
    system "make", "all"
    system "make", "prefix=#{prefix}", "install"
  end
end
