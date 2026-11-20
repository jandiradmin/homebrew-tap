cask "exocommander" do
  version "0.10.0"
  sha256 "05e10e6c8724721948fdfae0a192ba1a35e480a8ed8b7b472ebe5b263f6d1142"

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
