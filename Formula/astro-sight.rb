class AstroSight < Formula
  desc "AST information generator CLI for AI agents"
  homepage "https://github.com/owayo/astro-sight"
  url "https://github.com/owayo/astro-sight/archive/refs/tags/v26.6.106.tar.gz"
  sha256 "19fd186fdc095e9b2e0f9a78e0f4a6faeddffdd3b5dbf198235c8a8d3a2a9ef1"
  license "MIT"

  bottle do
    root_url "https://github.com/owayo/astro-sight/releases/download/v26.6.106"
    sha256 cellar: :any_skip_relocation, arm64_sonoma: "360ff43bde2dc4d59c2d32d011e81281cf1de469929c723a53449735215139c7"
    sha256 cellar: :any_skip_relocation, sonoma: "01e46fd303c6a18acea47942eed2a643a296a842aa65da597c0eafa56c720780"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "6afd69550a7c29b4947ab03ab543a9c3f3fef643f9d2f96de8ebe160a83b5bfd"
  end

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    system "#{bin}/astro-sight", "--version"
  end
end
