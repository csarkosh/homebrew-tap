# homebrew-tap

Homebrew formulae and casks for [csarkosh](https://github.com/csarkosh)'s software.

## Trusting this tap

Homebrew 6 and later load packages from a tap like this one only once you trust them. Installing
by the full name, as in every command below, trusts that one package, and its short name works
from then on. If you tapped first and see

```
Error: Refusing to load formula csarkosh/tap/macstats from untrusted tap csarkosh/tap.
```

trust the package it names and run the command again:

```sh
brew trust --formula csarkosh/tap/macstats   # or --cask, as the error says
```

`brew trust csarkosh/tap` trusts everything here, now and later. See Homebrew's
[Tap Trust](https://docs.brew.sh/Tap-Trust) page.

## MacStats

Five menu bar items, each with a panel. The cask installs the signed and notarized app; the
formula builds it on your Mac (it needs the Xcode Command Line Tools) and runs it as a service.

```sh
brew install --cask csarkosh/tap/macstats    # the app, in /Applications
open -a MacStats                             # add it in Login Items to start it at every login
```

or

```sh
brew install csarkosh/tap/macstats           # built from source
brew services start macstats                 # now and at every login
```

Use one or the other, or two copies run.

## Arkos IDE

A terminal-pane IDE for running many Claude Code sessions, with a daemon that keeps them alive.

```
brew install --cask csarkosh/tap/arkos-ide
```

The app updates itself (`auto_updates`), so `brew upgrade` leaves it alone. Releases from 0.3.2 on are signed with a Developer ID and notarized, so the download opens as any app does.
