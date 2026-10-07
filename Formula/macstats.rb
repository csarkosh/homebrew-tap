class Macstats < Formula
  desc "Five menu bar items for a Mac: CPU, GPU, RAM, Temp and free disk space"
  homepage "https://github.com/csarkosh/app-macstats"
  url "https://github.com/csarkosh/app-macstats/archive/refs/tags/v1.0.0.tar.gz"
  sha256 "17b22e2266ae988be2355324919290cce458ed9e2374b1412a9fdf96a20b4278"
  license "MIT"
  head "https://github.com/csarkosh/app-macstats.git", branch: "main"

  depends_on :macos

  def install
    # Builds with the Command Line Tools' swiftc; SwiftPM's own sandbox cannot nest in Homebrew's.
    system "make", "app", "SWIFT_FLAGS=--disable-sandbox"
    prefix.install "build/MacStats.app"
    bin.install_symlink prefix/"MacStats.app/Contents/MacOS/MacStats" => "macstats"
  end

  service do
    run [opt_prefix/"MacStats.app/Contents/MacOS/MacStats"]
    keep_alive true
    log_path var/"log/macstats.log"
    error_log_path var/"log/macstats.log"
  end

  def caveats
    <<~EOS
      To show the items now and at every login:
        brew services start macstats
      Right-click any item for Quit; `brew services stop macstats` stops it for good.
      The installer script (curl | sh) is the other way in: use one or the other.
    EOS
  end

  test do
    assert_equal version.to_s, shell_output("#{bin}/macstats --version").strip
  end
end
