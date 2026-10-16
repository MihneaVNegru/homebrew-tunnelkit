class Tunnelkit < Formula
  desc "Expose a local port with a public HTTPS address"
  homepage "https://app.tunnelkit.app"
  version "0.1.2"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://downloads.tunnelkit.app/releases/v0.1.2/tunnelkit-darwin-arm64.tar.gz"
      sha256 "2b3464bcb9ae13a22a975d1325a6bd2f796dc3da01016d9ab69ee53bac3b564f"
    end
    on_intel do
      url "https://downloads.tunnelkit.app/releases/v0.1.2/tunnelkit-darwin-amd64.tar.gz"
      sha256 "4dfe8521939b489ee59e94bfcc57fb816f9952c0d1fd06c15a066cb465f87ad8"
    end
  end

  on_linux do
    on_arm do
      url "https://downloads.tunnelkit.app/releases/v0.1.2/tunnelkit-linux-arm64.tar.gz"
      sha256 "2cf9b2c732620449552d024f68213b61436441784003ece92da25e8764dba721"
    end
    on_intel do
      url "https://downloads.tunnelkit.app/releases/v0.1.2/tunnelkit-linux-amd64.tar.gz"
      sha256 "85ab6f27ae2af157a3b077871c2921e2d760be3be0189bd882471c84362c45a2"
    end
  end

  def install
    bin.install "tunnelkit"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/tunnelkit version")
  end
end
