class Tunnelkit < Formula
  desc "Expose a local port with a public HTTPS address"
  homepage "https://app.tunnelkit.app"
  version "0.1.1"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://downloads.tunnelkit.app/releases/v0.1.1/tunnelkit-darwin-arm64.tar.gz"
      sha256 "bbaa14bceb7938094ebd5df211f6ab10ad03cfdab0e7c62b61b2a9732dba4687"
    end
    on_intel do
      url "https://downloads.tunnelkit.app/releases/v0.1.1/tunnelkit-darwin-amd64.tar.gz"
      sha256 "d40111fac3c56fe2e601452212a77f9012fe92f626fd8687fb0af4c20609b35f"
    end
  end

  on_linux do
    on_arm do
      url "https://downloads.tunnelkit.app/releases/v0.1.1/tunnelkit-linux-arm64.tar.gz"
      sha256 "bd31b12bf64ea96c83c4b8d573606bbe28b692b8f92ce0cb58e07b4cbc564980"
    end
    on_intel do
      url "https://downloads.tunnelkit.app/releases/v0.1.1/tunnelkit-linux-amd64.tar.gz"
      sha256 "c3ebd31f5b13e726bde53bcc46628e9a81ac7a76fc8e8a1585f7b19d43207eb1"
    end
  end

  def install
    bin.install "tunnelkit"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/tunnelkit version")
  end
end
