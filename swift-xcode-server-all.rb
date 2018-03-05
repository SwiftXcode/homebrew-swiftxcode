class SwiftXcodeServerAll < Formula

  desc "Build Swift servers from within Xcode."
  homepage "https://swiftxcode.github.io"
  
  url "https://github.com/SwiftXcode/server-all/archive/0.1.0.tar.gz"
  # curl -L https://github.com/SwiftXcode/server-all/archive/0.1.0.tar.gz | shasum -a 256
  sha256 "967e38ea75bfdaff7f2c81118ba429d1c5d3ba7ade3ee801b672bb704d88b781"
  
  depends_on "swiftxcode/swiftxcode/swift-xcode-nio"
  depends_on "swiftxcode/swiftxcode/swift-xcode-server-api"
  depends_on "swiftxcode/swiftxcode/swift-xcode-kitura"

  def install
    doc.install "README.md"
    ohai "Always remember to call \"swift xcode link-templates\" after installing images!"
  end
end
