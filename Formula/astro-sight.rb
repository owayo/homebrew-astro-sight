class AstroSight < Formula
  desc "AST information generator CLI for AI agents"
  homepage "https://github.com/owayo/astro-sight"
  url "https://github.com/owayo/astro-sight/archive/refs/tags/v26.6.102.tar.gz"
  sha256 "4434cc924167a2c869b40a6b5e2221bdbbcf8448f30222b00875ad6c4e82791a"
  license "MIT"

  bottle do
    root_url "https://github.com/owayo/astro-sight/releases/download/v26.6.102"
    sha256 cellar: :any_skip_relocation, arm64_sonoma: "d0c2643533e1018f29b4c92d0c611e18c82b42fb1af71829e71dfdba8bf5bcf0"
    sha256 cellar: :any_skip_relocation, sonoma: "2073b05cbe27f2d2a85100d3060afddcd36116e065a6f37f53554306d6e368e8"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "19bbd58401f9ab6d4aa21c3cea016c87766a20e52c98db11dbc83d5a1d68e7d0"
  end

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    system "#{bin}/astro-sight", "--version"
  end
end
