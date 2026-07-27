class AstroSight < Formula
  desc "AST information generator CLI for AI agents"
  homepage "https://github.com/owayo/astro-sight"
  url "https://github.com/owayo/astro-sight/archive/refs/tags/v26.7.111.tar.gz"
  sha256 "16e1538019fdda4f978cde5b50a3de46fc9dbacf1fb6a66bb3b6f724290e693f"
  license "MIT"

  bottle do
    root_url "https://github.com/owayo/astro-sight/releases/download/v26.7.111"
    sha256 cellar: :any_skip_relocation, arm64_sonoma: "8b3082d7b0d1a62d2e6716dec906b4c7cbffffa3673f183c0404fed097e66996"
    sha256 cellar: :any_skip_relocation, sonoma: "7b97fd9ff03c189849120edf860805656edd2dc069a73e427c8a4c6e14270ba9"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "8fbc9aca73ac5c47338777b54f85ae3cefca489aa124a4b65a11ed6a970b690b"
  end

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    system "#{bin}/astro-sight", "--version"
  end
end
