class AstroSight < Formula
  desc "AST information generator CLI for AI agents"
  homepage "https://github.com/owayo/astro-sight"
  url "https://github.com/owayo/astro-sight/archive/refs/tags/v26.6.115.tar.gz"
  sha256 "2d618c36144238a3ec2dd403487e969c2db150d699e3c192034c6dd5ee9a9249"
  license "MIT"

  bottle do
    root_url "https://github.com/owayo/astro-sight/releases/download/v26.6.115"
    sha256 cellar: :any_skip_relocation, arm64_sonoma: "5705899cce0b692864633b318faa11399f3d2037acdef971a4e0d41543950c49"
    sha256 cellar: :any_skip_relocation, sonoma: "66fdae1524d84811d3b8dccc22f467838295bba21d0150a67d3d6653110d8152"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "93cee3086dd4f0815f9b79b3fb5c500bc0f63a0ec21f0cd7fe0ab271c9a93e41"
  end

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    system "#{bin}/astro-sight", "--version"
  end
end
