class AstroSight < Formula
  desc "AST information generator CLI for AI agents"
  homepage "https://github.com/owayo/astro-sight"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/owayo/astro-sight/releases/download/v26.10.107/astro-sight-aarch64-apple-darwin.tar.gz"
      sha256 "32ece016c53152618ec004bd57e93ef0d1ef0eccc949e5fb73770b3b1c436d56"
    else
      url "https://github.com/owayo/astro-sight/releases/download/v26.10.107/astro-sight-x86_64-apple-darwin.tar.gz"
      sha256 "a17ce54074df22fd7902be3878a046bccaf99338720a5c2121bee87cc9ffc47c"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/owayo/astro-sight/releases/download/v26.10.107/astro-sight-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "ddfead3cb2a3e27fb4f38e969163da0428c85456a7ccafa4fae011ec59090efc"
    else
      url "https://github.com/owayo/astro-sight/releases/download/v26.10.107/astro-sight-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "15ad908535a61711b22bc1f50adaf0de4d708d176795afa86ff8e86c9eef1429"
    end
  end

  def install
    bin.install "astro-sight"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/astro-sight --version")
  end
end
