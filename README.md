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
```

The app updates itself (`auto_updates`), so `brew upgrade` leaves it alone. Releases from 0.3.2 on are signed with a Developer ID and notarized, so the download opens as any app does.
