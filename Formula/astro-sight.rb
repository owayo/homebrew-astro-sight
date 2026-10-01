class AstroSight < Formula
  desc "AST information generator CLI for AI agents"
  homepage "https://github.com/owayo/astro-sight"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/owayo/astro-sight/releases/download/v26.10.101/astro-sight-aarch64-apple-darwin.tar.gz"
      sha256 "ec6dfac7921ec5d0fe8ca397a863a53c21f182391a6af0dc9d587ebfafd0591f"
    else
      url "https://github.com/owayo/astro-sight/releases/download/v26.10.101/astro-sight-x86_64-apple-darwin.tar.gz"
      sha256 "b948dd3a48c93af75161d91b9abe68ff1ad5b019d1307248981adf4ae69bff0b"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/owayo/astro-sight/releases/download/v26.10.101/astro-sight-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "5babe542404c0fff160d51b93402e55e815708333bae835fda13adaef5008d0f"
    else
      url "https://github.com/owayo/astro-sight/releases/download/v26.10.101/astro-sight-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "41f7125c5b1bbdfeea153796467ff0b320698a0bf8980e6d9be48f62cd3c4d65"
    end
  end

  def install
    bin.install "astro-sight"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/astro-sight --version")
  end
end
