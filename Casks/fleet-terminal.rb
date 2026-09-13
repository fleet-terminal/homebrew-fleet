cask "fleet-terminal" do
  version "1.1.0"
  sha256 "201c26bfef0498b33647720a28fb231bd5154f857806475b44ddffa61b010d46"

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
