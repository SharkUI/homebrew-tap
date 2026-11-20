cask "sharkbay" do
  version "0.3.13"
  sha256 "e04b7732b1cc493fbc87f778b95a55d2ceeb9dff1e257ddb1dbb59fe84b6ee38"

  url "https://github.com/SharkUI/SharkBay/releases/download/v#{version}/SharkBay-#{version}-arm64.dmg"
  name "SharkBay"
  desc "Workbench for multi-agent vibe coding"
  homepage "https://sharkbay.xyz/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on arch: :arm64
  depends_on macos: :ventura

  app "SharkBay.app"

  zap trash: [
    "~/Library/Application Support/SharkBay",
    "~/Library/Caches/xyz.sharkbay.app",
    "~/Library/Logs/SharkBay",
    "~/Library/Preferences/xyz.sharkbay.app.plist",
    "~/Library/Saved Application State/xyz.sharkbay.app.savedState",
  ]
end
