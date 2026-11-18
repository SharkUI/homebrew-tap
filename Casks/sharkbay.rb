cask "sharkbay" do
  version "0.3.11"
  sha256 "440192a058e4458edf84d8d9c3e470ebb54ae465fb9f9349caef4ed62a579d5e"

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
