class AstroSight < Formula
  desc "AST information generator CLI for AI agents"
  homepage "https://github.com/owayo/astro-sight"
  url "https://github.com/owayo/astro-sight/archive/refs/tags/v26.6.107.tar.gz"
  sha256 "a0e786cc25dc861c38708443fc983b4e4bba3c5187f6f0c6a0733721c9e47a9a"
  license "MIT"

  bottle do
    root_url "https://github.com/owayo/astro-sight/releases/download/v26.6.107"
    sha256 cellar: :any_skip_relocation, arm64_sonoma: "0cab7238309da0ac9ef2f749438229cab9eb145655e52a3ea30accb599cafe90"
    sha256 cellar: :any_skip_relocation, sonoma: "0cf55e72878b88f4ea8600064eabc6005db67cc8a55e54ceaa573bb1681a8d18"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "eb846bcdad3eb87c8fdc5909e7679ef70ffc4353dd1bc671f92865ff160d09b3"
  end

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    system "#{bin}/astro-sight", "--version"
  end
end
