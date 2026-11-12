class AstroSight < Formula
  desc "AST information generator CLI for AI agents"
  homepage "https://github.com/owayo/astro-sight"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/owayo/astro-sight/releases/download/v26.11.103/astro-sight-aarch64-apple-darwin.tar.gz"
      sha256 "8febb0f0ad7ca6945a478363016eeb96f23c7604982ced8cbde6f42e97722b41"
    else
      url "https://github.com/owayo/astro-sight/releases/download/v26.11.103/astro-sight-x86_64-apple-darwin.tar.gz"
      sha256 "7560282c9727c56893bfa6f02d3fc9644513404bdf35a40e7b54ba72c98703f0"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/owayo/astro-sight/releases/download/v26.11.103/astro-sight-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "9630db979eb9a368d29531eaaf46e9d856fa8124822f3994c508cb7b80766771"
    else
      url "https://github.com/owayo/astro-sight/releases/download/v26.11.103/astro-sight-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "1f6e29b418b2b59d1f5a7fd845446204bb1c35789cbfccb8f70dde8cfe90f3c0"
    end
  end

  def install
    bin.install "astro-sight"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/astro-sight --version")
  end
end
