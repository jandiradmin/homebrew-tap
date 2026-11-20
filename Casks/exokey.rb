cask "exokey" do
  version "0.2.1"
  sha256 "2b467f267d5e02d633f30b09b39d642b7b413b8aa4857b983a99da7f4c540607"

  url "https://github.com/jandiradmin/ExoKey/releases/download/v#{version}/ExoKey-#{version}.zip"
  name "ExoKey"
  desc "Keyboard layout auto-switcher (EN/UK/RU) with local AI autocomplete"
  homepage "https://exokey.top/"

  livecheck do
    url :url
    strategy :github_releases
  end

  depends_on arch: :arm64
  depends_on macos: :ventura

  app "ExoKey.app"

  uninstall quit: "app.exokey.ExoKey"

  zap trash: [
    "~/Library/Application Support/ExoKey",
    "~/Library/Preferences/app.exokey.ExoKey.plist",
  ]

  caveats <<~EOS
    ExoKey is not notarized by Apple yet. On the first launch macOS will refuse to open it:
    open System Settings → Privacy & Security and click "Open Anyway" next to ExoKey.
    Then allow ExoKey in System Settings → Privacy & Security → Accessibility and Input Monitoring.
  EOS
end
