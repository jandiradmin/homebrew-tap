cask "exocommander" do
  version "0.11.1"
  sha256 "9984bffa30f126721da6332b7ce8b1d47eb9e40a2ac4bf488362b0196dd07b83"

  url "https://github.com/jandiradmin/ExoCommander/releases/download/v#{version}/ExoCommander-#{version}.zip"
  name "ExoCommander"
  desc "Two-panel file manager in the spirit of Far Manager and Total Commander"
  homepage "https://exocommander.top/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :ventura

  app "ExoCommander.app"

  zap trash: [
    "~/Library/Preferences/com.exo.ExoCommander.plist",
    "~/Library/Saved Application State/com.exo.ExoCommander.savedState",
  ]
end
