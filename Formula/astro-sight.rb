class AstroSight < Formula
  desc "AST information generator CLI for AI agents"
  homepage "https://github.com/owayo/astro-sight"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/owayo/astro-sight/releases/download/v26.11.111/astro-sight-aarch64-apple-darwin.tar.gz"
      sha256 "519663d2ca49e0032bc3fe5dc6d6db9f0324a01ac1a2b6feef6b564affc1a76b"
    else
      url "https://github.com/owayo/astro-sight/releases/download/v26.11.111/astro-sight-x86_64-apple-darwin.tar.gz"
      sha256 "4855f186ed34ec15d35c432428fe603b5ea23db3587b06f0b302e6a3ea94fe58"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/owayo/astro-sight/releases/download/v26.11.111/astro-sight-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "af6535df333e40251d68b6f12e46a37035e3d4658e9e6e4951e15ce601bdeadb"
    else
      url "https://github.com/owayo/astro-sight/releases/download/v26.11.111/astro-sight-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "513f59558f4c3fe1d8d3d531eaac60bfcf19d09206dca90dee978ec9152b3771"
    end
  end

  def install
    bin.install "astro-sight"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/astro-sight --version")
  end
end
