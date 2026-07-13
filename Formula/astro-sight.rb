class AstroSight < Formula
  desc "AST information generator CLI for AI agents"
  homepage "https://github.com/owayo/astro-sight"
  url "https://github.com/owayo/astro-sight/archive/refs/tags/v26.7.105.tar.gz"
  sha256 "83ff26d353a0564d21d33f0cdab0262ccdb0ee9cabf3ee3cfb3259c61c977e3e"
  license "MIT"

  bottle do
    root_url "https://github.com/owayo/astro-sight/releases/download/v26.7.105"
    sha256 cellar: :any_skip_relocation, arm64_sonoma: "cc637081eeb3edbd648a98c2a031a16bcae9b33dce291315bcd2eaa8ad5ae622"
    sha256 cellar: :any_skip_relocation, sonoma: "ed42f12f82ac9d88ce426de84860b19111c6793c0477a39ca353d692a82eaf31"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "9440a35cc9d7e3455d2fdbccb20a1ab020aa4e4914d53213f4e1e9d1c7caf976"
  end

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    system "#{bin}/astro-sight", "--version"
  end
end
