# SharkUI Homebrew Tap

Homebrew tap for [SharkBay](https://sharkbay.xyz/).

## Install

```bash
brew install --cask SharkUI/tap/sharkbay
```

Installing by this fully-qualified name trusts only the SharkBay cask, so it
works directly on Homebrew 6.0+ (which requires trust for third-party taps).

Short-name form (Homebrew 6.0+ needs an explicit trust step first):

```bash
brew tap SharkUI/tap
brew trust --cask SharkUI/tap/sharkbay
brew install --cask sharkbay
```

## Update

```bash
brew upgrade --cask sharkbay
```

## Notes

- macOS on Apple Silicon (arm64).
- SharkBay is signed with a Developer ID certificate and notarized by Apple.
