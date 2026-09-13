cask "fleet-terminal" do
  version "1.1.1"
  sha256 "a6dddaba1c81a7f2a88b4f65bc65cfb7ec54c394317262e007a907e63ca29312"

  url "https://dl.fleet-terminal.app/Fleet-#{version}.dmg"
  name "Fleet Terminal"
  desc "Terminal for running many AI coding agents at once"
  homepage "https://fleet-terminal.app/"

  livecheck do
    url "https://dl.fleet-terminal.app/appcast.json"
    strategy :json do |json|
      json.dig("latest", "version")
    end
  end

  auto_updates true
  depends_on macos: :sonoma

  app "Fleet.app"

  zap trash: [
    "~/.config/fleet-terminal",
    "~/Library/Caches/com.fleet.terminal",
    "~/Library/Preferences/com.fleet.terminal.plist",
    "~/Library/Saved Application State/com.fleet.terminal.savedState",
  ]
end
