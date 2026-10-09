class AstroSight < Formula
  desc "AST information generator CLI for AI agents"
  homepage "https://github.com/owayo/astro-sight"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/owayo/astro-sight/releases/download/v26.10.108/astro-sight-aarch64-apple-darwin.tar.gz"
      sha256 "c49cccc9b5873b80ca2189e0522a00c50037282486357afc7af5717c58245c2e"
    else
      url "https://github.com/owayo/astro-sight/releases/download/v26.10.108/astro-sight-x86_64-apple-darwin.tar.gz"
      sha256 "48bb79ebab76a52132d0cc1ad8924bca00d62cf04c02733b97ac97b338169498"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/owayo/astro-sight/releases/download/v26.10.108/astro-sight-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "1fc72412f54df77259617ba2149cb739ab949f7638c93a0999a9889ea3ba83f7"
    else
      url "https://github.com/owayo/astro-sight/releases/download/v26.10.108/astro-sight-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "8352d5eccbc4433d0708c285822c08748387a95941c03b1fb82d0679deacd234"
    end
  end

  def install
    bin.install "astro-sight"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/astro-sight --version")
  end
end
