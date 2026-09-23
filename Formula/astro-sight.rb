class AstroSight < Formula
  desc "AST information generator CLI for AI agents"
  homepage "https://github.com/owayo/astro-sight"
  url "https://github.com/owayo/astro-sight/archive/refs/tags/v26.9.103.tar.gz"
  sha256 "cf43c5640fc31d3feb46ab52bfb82c205bc61e713ce781ffb767a2b2ba9e74bd"
  license "MIT"

  bottle do
    root_url "https://github.com/owayo/astro-sight/releases/download/v26.9.103"
    sha256 cellar: :any_skip_relocation, arm64_sonoma: "02782b9a8ae8a088dc07dd19901ee4d47c15ed0d12fd8778bf1a87a793111525"
    sha256 cellar: :any_skip_relocation, sonoma: "bd263eb84e4271441f45ff0c2ff4555ee3e023635984036696754ad2a82c6026"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "353c92b158cd741b71a0fd7cda157ab9f6fed6be6d0ed19dcaac30eb5c8683fc"
  end

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    system "#{bin}/astro-sight", "--version"
  end
end
