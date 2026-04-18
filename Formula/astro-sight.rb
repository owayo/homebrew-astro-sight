class AstroSight < Formula
  desc "AST information generator CLI for AI agents"
  homepage "https://github.com/owayo/astro-sight"
  url "https://github.com/owayo/astro-sight/archive/refs/tags/v26.4.111.tar.gz"
  sha256 "bfa5dedefd47d5468b8ef820e090749d5deed0285ad0050a4eb3395531c7e9ce"
  license "MIT"

  bottle do
    root_url "https://github.com/owayo/astro-sight/releases/download/v26.4.111"
    sha256 cellar: :any_skip_relocation, arm64_sonoma: "e4c5ed1745d1477c8710c8a2d52d99ed252cb9b98f644f39600107d0a4f88af5"
    sha256 cellar: :any_skip_relocation, sonoma: "91f51a07735da765c21a5b372a3bac438cf4ec5034968b20c1f9a846fea9af3f"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "862afb697faa3066bfde74e12379252fe860933375c56c9e6c6cee824c856e42"
  end

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    system "#{bin}/astro-sight", "--version"
  end
end
