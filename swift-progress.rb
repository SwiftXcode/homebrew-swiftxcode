class SwiftProgress < Formula

  desc "Visualize Swift Package Manager progress in a window."
  homepage "https://swiftxcode.github.io"
  url "https://github.com/SwiftXcode/swift-progress/archive/0.9.1.tar.gz"
  # curl -L https://github.com/SwiftXcode/swift-progress/archive/0.9.1.tar.gz | shasum -a 256
  sha256 "b41e467d46db29852ca7d840ea986d4bd76286083cefed8601bb08602d111d41"
  
  def install
    system "make", "all"
    system "make", "prefix=#{prefix}", "install"
  end
end
