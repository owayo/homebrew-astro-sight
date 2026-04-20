class AstroSight < Formula
  desc "AST information generator CLI for AI agents"
  homepage "https://github.com/owayo/astro-sight"
  url "https://github.com/owayo/astro-sight/archive/refs/tags/v26.4.114.tar.gz"
  sha256 "0af18e9456a7d31fd639dbb150f2568cc7d7e6676a81c1c97d9b53e2a5ee5d17"
  license "MIT"

  bottle do
    root_url "https://github.com/owayo/astro-sight/releases/download/v26.4.114"
    sha256 cellar: :any_skip_relocation, arm64_sonoma: "6f674851a597f68cc6176f48f8c151686fb61e0866452895f90be25b3e2b8135"
    sha256 cellar: :any_skip_relocation, sonoma: "5a7d0cff13f9e4d8b4390da1c8173c3391932c0b263f845359155659531ba337"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "1e106e6321df227e789184949e5276090e0afc87850bc7db5907c7f551cfdf7b"
  end

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    system "#{bin}/astro-sight", "--version"
  end
end
