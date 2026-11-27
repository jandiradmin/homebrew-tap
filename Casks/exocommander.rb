cask "exocommander" do
  version "0.11.1"
  sha256 "f4408d8237f627c33aaeb2291c2983a0a6f180ac8b7f0673536ae3324dc19e8e"

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

  caveats <<~EOS
    ExoCommander is not notarized by Apple yet. On the first launch macOS will refuse to open it:
    open System Settings → Privacy & Security and click "Open Anyway" next to ExoCommander.
  EOS
end
