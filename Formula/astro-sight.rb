class AstroSight < Formula
  desc "AST information generator CLI for AI agents"
  homepage "https://github.com/owayo/astro-sight"
  url "https://github.com/owayo/astro-sight/archive/refs/tags/v26.5.119.tar.gz"
  sha256 "e7fefe9d321ebddf35fc5790bfaa5d15d697145ecd1e19f6bcd236ce7fbefeb5"
  license "MIT"

  bottle do
    root_url "https://github.com/owayo/astro-sight/releases/download/v26.5.119"
    sha256 cellar: :any_skip_relocation, arm64_sonoma: "63c03c36efb9a683e14268e0cc5ea453b089d3783120017e260a7b588b9a6ea4"
    sha256 cellar: :any_skip_relocation, sonoma: "377e08117e05bb3ac0ceb83dfb3b59c2d3a170a6b8d822b0c58193e21b247143"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "aa7f8c20e091fe6363307a29aba288ac36c3ea1aa9e0cdd6de1fae077a7378fd"
  end

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    system "#{bin}/astro-sight", "--version"
  end
end
