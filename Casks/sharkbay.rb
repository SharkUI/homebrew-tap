cask "sharkbay" do
  version "0.3.6"
  sha256 "6ec22ae1d4a9ad865f4671fd625d1c48f0924ba2113c9f7317b262b84b38e7cc"

  url "https://github.com/SharkUI/SharkBay/releases/download/v#{version}/SharkBay-#{version}-arm64.dmg"
  name "SharkBay"
  desc "Workbench for multi-agent vibe coding"
  homepage "https://sharkbay.xyz/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on arch: :arm64
  depends_on :macos

  app "SharkBay.app"

  zap trash: [
    "~/Library/Application Support/SharkBay",
    "~/Library/Caches/xyz.sharkbay.app",
    "~/Library/Logs/SharkBay",
    "~/Library/Preferences/xyz.sharkbay.app.plist",
    "~/Library/Saved Application State/xyz.sharkbay.app.savedState",
  ]
end
