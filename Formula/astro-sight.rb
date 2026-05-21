class AstroSight < Formula
  desc "AST information generator CLI for AI agents"
  homepage "https://github.com/owayo/astro-sight"
  url "https://github.com/owayo/astro-sight/archive/refs/tags/v26.5.122.tar.gz"
  sha256 "a602515aef288d9f559e01eb432ad2ef341fcc6ea8d46c6f83ae1d73383369b6"
  license "MIT"

  bottle do
    root_url "https://github.com/owayo/astro-sight/releases/download/v26.5.122"
    sha256 cellar: :any_skip_relocation, arm64_sonoma: "60fa68623d1ef4e7cfb6384b88e7625ce7d87a5c51ecea10f706f0bee48769f2"
    sha256 cellar: :any_skip_relocation, sonoma: "ae69a123182619c015826065cff8d6b8eed23d14850f218d5eb6b629b800010e"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "6fc8147548f3a3ef5397bf3672cbab7a7fdb67c73c0be95de15e1851c6570d13"
  end

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    system "#{bin}/astro-sight", "--version"
  end
end
