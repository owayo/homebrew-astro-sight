class AstroSight < Formula
  desc "AST information generator CLI for AI agents"
  homepage "https://github.com/owayo/astro-sight"
  url "https://github.com/owayo/astro-sight/archive/refs/tags/v26.8.109.tar.gz"
  sha256 "4919574842e89c3f6ae9449f9e34b88f3227530dd83d5fb9dc9a64274a6b5be8"
  license "MIT"

  bottle do
    root_url "https://github.com/owayo/astro-sight/releases/download/v26.8.109"
    sha256 cellar: :any_skip_relocation, arm64_sonoma: "84e7de83f6f45b458a0df5620b719b2de221abd964c5b3bf72b723267f756c64"
    sha256 cellar: :any_skip_relocation, sonoma: "26f069eb44017d0efa96fb0fcbb42b188a381f34d8f4e10aa07258a1d1ec341d"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "582556ad12ea389b92b33f2b609de7d0bbddcb36fb4b98280d232c18cb177f50"
  end

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    system "#{bin}/astro-sight", "--version"
  end
end
