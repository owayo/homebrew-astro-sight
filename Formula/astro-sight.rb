class AstroSight < Formula
  desc "AST information generator CLI for AI agents"
  homepage "https://github.com/owayo/astro-sight"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/owayo/astro-sight/releases/download/v26.11.101/astro-sight-aarch64-apple-darwin.tar.gz"
      sha256 "a113b6264a1323c6950d32d0ad76f5bb357a94a9a2a62ffecece0fff58ee9d69"
    else
      url "https://github.com/owayo/astro-sight/releases/download/v26.11.101/astro-sight-x86_64-apple-darwin.tar.gz"
      sha256 "85e74dbc050c636192713ecf8827ee56c1cc1bcd1161213f0df2260eeb94a6d2"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/owayo/astro-sight/releases/download/v26.11.101/astro-sight-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "ec2fc7b389cdaf853dcc04e43991065f0cf2aa0da3803821eb52aa581b46b9c4"
    else
      url "https://github.com/owayo/astro-sight/releases/download/v26.11.101/astro-sight-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "fc2fc0bbe1ef868f0c69fdd60f102be697a557b54be42086ff6bff8e1d96fb06"
    end
  end

  def install
    bin.install "astro-sight"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/astro-sight --version")
  end
end
