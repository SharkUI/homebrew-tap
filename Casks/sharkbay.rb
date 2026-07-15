cask "sharkbay" do
  version "0.3.1"
  sha256 "fb374dd3656289c17b4750ac03da1050cf9469a483991347c6e76431e4b62d26"

  url "https://github.com/SharkUI/SharkBay/releases/download/v#{version}/SharkBay-#{version}-arm64.dmg",
      verified: "github.com/SharkUI/SharkBay/"
  name "SharkBay"
  desc "Workbench for multi-agent vibe coding"
  homepage "https://sharkbay.xyz/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on arch: :arm64
  depends_on macos: :big_sur

  app "SharkBay.app"

  zap trash: [
    "~/Library/Application Support/SharkBay",
    "~/Library/Caches/xyz.sharkbay.app",
    "~/Library/Logs/SharkBay",
    "~/Library/Preferences/xyz.sharkbay.app.plist",
    "~/Library/Saved Application State/xyz.sharkbay.app.savedState",
  ]
end
