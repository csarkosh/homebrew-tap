cask "arkos-ide" do
  version "0.7.12"
  sha256 "15f2a5a423cbb1a55c07f4cb990d86287cd9e60baae7a619a046e23e087f50de"

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
