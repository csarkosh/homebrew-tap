# homebrew-tap

Homebrew formulae for [csarkosh](https://github.com/csarkosh)'s software.

```sh
brew install csarkosh/tap/macstats    # MacStats: five menu bar items, each with a panel
brew services start macstats          # show them now and at every login
```

A formula here builds from a tagged release of its repository; see each formula's `url`.

## Arkos IDE

A terminal-pane IDE for running many Claude Code sessions, with a daemon that keeps them alive.

```
brew install --cask csarkosh/tap/arkos-ide
xattr -dr com.apple.quarantine "/Applications/Arkos IDE.app"
```

The app updates itself (`auto_updates`), so `brew upgrade` leaves it alone. The second line is needed until the app is notarized: the bundle is ad-hoc signed, and Gatekeeper refuses a quarantined ad-hoc app.
