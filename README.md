<h2>SwiftXcode
  <img src="http://zeezide.com/img/SwiftXcodePkgIcon.svg"
       align="right" width="128" height="128" />
</h2>

![Swift4](https://img.shields.io/badge/swift-4-blue.svg)
![Swift5](https://img.shields.io/badge/swift-5-blue.svg)
![macOS](https://img.shields.io/badge/os-macOS-green.svg?style=flat)
[![homebrew](https://img.shields.io/homebrew/v/cake.svg)](https://github.com/SwiftXcode/homebrew-swiftxcode)

**Breaking News from WWDC 2019**: 
[Xcode 11](https://developer.apple.com/xcode/) 
is finally supporting Swift Package Manager. Rendering `swift-xcode` itself obsolete.

There are still live projects like `swift-lambda` under the SwiftXcode umbrella,
hence this Homebrew tap is still active and alive.


Checkout [SwiftXcode](https://SwiftXcode.github.io/) for more information.

This repository provides a Homebrew tap (repository) from which you can
easily install swift-xcode.

# Outdated Information: Use Xcode 11+ for SwiftPM

## Installation

Got no Homebrew? [Get it!](https://brew.sh)

```shell
brew tap swiftxcode/swiftxcode
brew install swift-xcode
swift xcode link-templates # <-- important!
```

## Extra Images

### Kitura

```shell
brew install swift-xcode-kitura
swift xcode link-templates # <-- important!
```

### SwiftNIO 1 & 2

```shell
brew install swift-xcode-nio1
brew install swift-xcode-nio2
swift xcode link-templates # <-- important!
```

### Swift Server Working Group HTTP API

```shell
brew install swift-xcode-server-api
swift xcode link-templates # <-- important!
```


### Who

**SwiftXcode** is brought to you by
[ZeeZide](http://zeezide.de).
We like feedback, GitHub stars, cool contract work,
presumably any form of praise you can think of.
