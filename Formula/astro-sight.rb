class AstroSight < Formula
  desc "AST information generator CLI for AI agents"
  homepage "https://github.com/owayo/astro-sight"
  url "https://github.com/owayo/astro-sight/archive/refs/tags/v26.5.116.tar.gz"
  sha256 "558c142087a58028fd1d8618143495b2ea2e41353787da77ae1514320fcac5af"
  license "MIT"

  bottle do
    root_url "https://github.com/owayo/astro-sight/releases/download/v26.5.116"
    sha256 cellar: :any_skip_relocation, arm64_sonoma: "a67ceeb881334871247a97d708f19b73ac98ea8d886510fc64c211a59688c6ad"
    sha256 cellar: :any_skip_relocation, sonoma: "b74510baec9877cc27e57d256a6ee76654b64868d1d603bf2a8ecbb154cdcf01"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "9afe98b80be071ecabb986b6887a70808fd5fa3a4eba65bbbf5a49a1abce7a4b"
  end

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    system "#{bin}/astro-sight", "--version"
  end
end
