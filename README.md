# Homebrew tap for ExoCommander

Two-panel file manager for macOS — https://exocommander.top

```sh
brew tap jandiradmin/tap
brew trust jandiradmin/tap      # Homebrew 7+ asks to trust third-party taps
brew install --cask exocommander
```

Update: `brew upgrade --cask exocommander`. Remove: `brew uninstall --zap --cask exocommander`.

The app is not notarized by Apple yet: on the first launch open
System Settings → Privacy & Security and click "Open Anyway".
