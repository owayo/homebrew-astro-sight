class AstroSight < Formula
  desc "AST information generator CLI for AI agents"
  homepage "https://github.com/owayo/astro-sight"
  url "https://github.com/owayo/astro-sight/archive/refs/tags/v26.7.104.tar.gz"
  sha256 "e52b21e8a165da4c8232c16c4ab5873e110d2d3694cf415a1b0907d3b5de1328"
  license "MIT"

  bottle do
    root_url "https://github.com/owayo/astro-sight/releases/download/v26.7.104"
    sha256 cellar: :any_skip_relocation, arm64_sonoma: "38849f0d9d382d5cf2070a44962709fdb2a8464923a289eda6cc23f31fc97efb"
    sha256 cellar: :any_skip_relocation, sonoma: "7f87b2064d7ffcb7ecf07778d9520f3a15329ef59c292fb525c1d91c1c08097c"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "8bfda7fd08cb05a55aa561a5adead1ea87ea514b632cbfc9cfef354cded16dc5"
  end

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    system "#{bin}/astro-sight", "--version"
  end
end
