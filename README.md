# Homebrew tap: ExoCommander, ExoKey, ExoCalc

```sh
brew tap jandiradmin/tap
brew trust jandiradmin/tap      # Homebrew 7+ asks to trust third-party taps
brew install --cask exocommander
brew install --cask exokey
brew install --cask exocalc
```

| Cask | App |
|---|---|
| `exocommander` | [ExoCommander](https://exocommander.top) — two-panel file manager in the spirit of Far Manager and Total Commander |
| `exokey` | [ExoKey](https://exokey.top) — keyboard layout auto-switcher (EN/UK/RU) with local AI autocomplete (Apple Silicon) |
| `exocalc` | [ExoCalc](https://github.com/jandiradmin/ExoCalc) — notepad calculator: currencies, crypto, units, plain words |

Update: `brew upgrade --cask <name>`. Remove: `brew uninstall --zap --cask <name>`.

The apps are not notarized by Apple yet: on the first launch open
System Settings → Privacy & Security and click "Open Anyway".
