class AstroSight < Formula
  desc "AST information generator CLI for AI agents"
  homepage "https://github.com/owayo/astro-sight"
  url "https://github.com/owayo/astro-sight/archive/refs/tags/v26.4.109.tar.gz"
  sha256 "443bb6378d0346f0b7e5ef5f3665855ff4b1178dc6f41ace53a98329dd63da44"
  license "MIT"

  bottle do
    root_url "https://github.com/owayo/astro-sight/releases/download/v26.4.109"
    sha256 cellar: :any_skip_relocation, arm64_sonoma: "e345a44d9dc9b981d29684eedeb980d3c5f055905bb22e4babc0600b71593118"
    sha256 cellar: :any_skip_relocation, sonoma: "61431565e6b189ce77ac17aeba340a13a5df066f78a0651afa24f7b20a345902"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "affc8a915c2dff260eea7d96c419403a683d33938abcb23f049843ce801cdb62"
  end

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    system "#{bin}/astro-sight", "--version"
  end
end
