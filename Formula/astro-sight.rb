class AstroSight < Formula
  desc "AST information generator CLI for AI agents"
  homepage "https://github.com/owayo/astro-sight"
  url "https://github.com/owayo/astro-sight/archive/refs/tags/v26.5.126.tar.gz"
  sha256 "862145dba042ecc14bb5d50bb2ec959572b4071a6767adfbe2fc73441a5f54b9"
  license "MIT"

  bottle do
    root_url "https://github.com/owayo/astro-sight/releases/download/v26.5.126"
    sha256 cellar: :any_skip_relocation, arm64_sonoma: "2e9592d9d2a84277b6ac2d0e812869928e1923498ea7c6433c55dfa352fcafde"
    sha256 cellar: :any_skip_relocation, sonoma: "f92707fee686a0fdd55fa1376e223c98d8734b91b123af25fe58a5daa6e6347d"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "334ea81d87589fbb2b8baa9d6ced2c13aad106aeded4d29a8ea99bfb93516654"
  end

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    system "#{bin}/astro-sight", "--version"
  end
end
