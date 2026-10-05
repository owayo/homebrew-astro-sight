class AstroSight < Formula
  desc "AST information generator CLI for AI agents"
  homepage "https://github.com/owayo/astro-sight"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/owayo/astro-sight/releases/download/v26.10.104/astro-sight-aarch64-apple-darwin.tar.gz"
      sha256 "fd743e37b325da4165e77f92e7522d4c16c74791a6f89da4e11fcba634548247"
    else
      url "https://github.com/owayo/astro-sight/releases/download/v26.10.104/astro-sight-x86_64-apple-darwin.tar.gz"
      sha256 "36581ebe354416dab7dfc1c66b7d7fea1c4c79624651cc6788cbf8cbced7e408"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/owayo/astro-sight/releases/download/v26.10.104/astro-sight-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "f67b5b9049061b600248595c8c95ef2cf5919f4b4d764303d16cb5d7dc2c16aa"
    else
      url "https://github.com/owayo/astro-sight/releases/download/v26.10.104/astro-sight-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "bd8266c9ed52147aa21ae3afe4cfea83ca0a1c0917187c92a8dee96b04b0cfdc"
    end
  end

  def install
    bin.install "astro-sight"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/astro-sight --version")
  end
end
