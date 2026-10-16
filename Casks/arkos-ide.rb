cask "arkos-ide" do
  version "0.4.2"
  sha256 "7c9e4f2d45eff2696079556a1133dba9c64827b8685ef328e16a3937d6769068"

  url "https://github.com/csarkosh/ide-arkos/releases/download/v#{version}/Arkos-IDE-#{version}-arm64.zip"
  name "Arkos IDE"
  desc "Terminal-pane IDE for running many Claude Code sessions, with a daemon that keeps them alive"
  homepage "https://github.com/csarkosh/ide-arkos"

  depends_on arch: :arm64
  depends_on macos: ">= :sonoma"
  auto_updates true

  app "Arkos IDE.app"
  # The command line (arkos theme, settings, guide, doctor) on PATH for shells outside Arkos.
  binary "#{appdir}/Arkos IDE.app/Contents/MacOS/arkos"

  zap trash: [
    "~/Library/Application Support/arkos",
    "~/Library/LaunchAgents/sh.csarko.arkosd.plist",
  ]
end
