cask "fleet-terminal" do
  version "1.0.1"
  sha256 "7af1fd7076d65e63ef618466bbc27fa7280ec3802945ff20602127d6ac8c5693"

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
