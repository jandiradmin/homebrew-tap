cask "exocalc" do
  version "1.3.2"
  sha256 "11c0bf6363492640bea139bc07c10f7158fa9aa522e98b68b23a5874a74b68b9"

  url "https://github.com/jandiradmin/ExoCalc/releases/download/v#{version}/ExoCalc-macOS.zip"
  name "ExoCalc"
  desc "Notepad calculator with currencies, crypto, units and plain words"
  homepage "https://github.com/jandiradmin/ExoCalc"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :monterey

  app "ExoCalc.app"

  uninstall quit: "com.jandiradmin.exocalc"

  zap trash: [
    "~/Library/Application Support/ExoCalc",
    "~/Library/Preferences/com.jandiradmin.exocalc.plist",
  ]

  caveats <<~EOS
    ExoCalc is not notarized by Apple yet. On the first launch macOS will refuse to open it:
    open System Settings → Privacy & Security and click "Open Anyway" next to ExoCalc.
  EOS
end
