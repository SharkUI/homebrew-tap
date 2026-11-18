cask "sharkbay" do
  version "0.3.12"
  sha256 "322f9287b9f3f332ffad0bd46e3b624b5a320947d778913e344123698c66f64a"

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
