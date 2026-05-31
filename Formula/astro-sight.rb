class AstroSight < Formula
  desc "AST information generator CLI for AI agents"
  homepage "https://github.com/owayo/astro-sight"
  url "https://github.com/owayo/astro-sight/archive/refs/tags/v26.5.128.tar.gz"
  sha256 "64b0dc01a967bf6929e68d385afaeaaebf12b9c33fb2ad1eb073004631ea3f32"
  license "MIT"

  bottle do
    root_url "https://github.com/owayo/astro-sight/releases/download/v26.5.128"
    sha256 cellar: :any_skip_relocation, arm64_sonoma: "3ec6b887efcb84c4f6a88e9d107e504105e6cdf62d7bd05e1ff89b67af22da03"
    sha256 cellar: :any_skip_relocation, sonoma: "92de3d7174fec58c650a2370f8f02e86e4572454001385d9c87e9239f9ac0a7c"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "c0f974ddea07d58cb94e8877967108f9aee5be5b04671b19e689a205e4a18a30"
  end

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    system "#{bin}/astro-sight", "--version"
  end
end
