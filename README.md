# 🔍 Fuzzy Search

[![Swift 5](https://img.shields.io/badge/swift-5-ED523F.svg?style=flat)](https://swift.org/download/)
[![CircleCI](https://circleci.com/gh/khoi/fuzzy-swift.svg?style=svg)](https://circleci.com/gh/khoi/fuzzy-swift)
[![@khoiracle](https://img.shields.io/badge/contact-@khoiracle-4bbee3.svg?style=flat)](https://twitter.com/khoiracle)

Simple and fast "fuzzy" string matching.

## Usage

```swift
search(needle: "ab", haystack: "asdfbwe") # true
search(needle: "mtme", haystack: "matchme") # true
search(needle: "mtt", haystack: "matchme") # false
``` 

## SwiftPM

To use Apple's Swift package manager, add this line to your `Package.swift`

```swift
.package(url: "https://github.com/khoi/fuzzy-swift", from: "0.1.0")
```

## 📜 License
MIT
