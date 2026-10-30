class AstroSight < Formula
  desc "AST information generator CLI for AI agents"
  homepage "https://github.com/owayo/astro-sight"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/owayo/astro-sight/releases/download/v26.10.126/astro-sight-aarch64-apple-darwin.tar.gz"
      sha256 "922ea1eee3a687a498dd2ae9b42532774314a34e7389d8dc1a14303c4d2a098d"
    else
      url "https://github.com/owayo/astro-sight/releases/download/v26.10.126/astro-sight-x86_64-apple-darwin.tar.gz"
      sha256 "b147b2f7a43c3299d19588599b741d546af5ce59176098f0bb5fca30a11bc231"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/owayo/astro-sight/releases/download/v26.10.126/astro-sight-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "39f1b1a15581333bbe06cec53da62141f7696a8b1dcb00011b81970a2d26a520"
    else
      url "https://github.com/owayo/astro-sight/releases/download/v26.10.126/astro-sight-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "b1e2bf3dd4e823fe8a3fed5be30bde4af84e240b174f96700ad7b8f3533f29cd"
    end
  end

  def install
    bin.install "astro-sight"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/astro-sight --version")
  end
end
