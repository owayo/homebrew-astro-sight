class AstroSight < Formula
  desc "AST information generator CLI for AI agents"
  homepage "https://github.com/owayo/astro-sight"
  url "https://github.com/owayo/astro-sight/archive/refs/tags/v26.4.123.tar.gz"
  sha256 "32c46c397c35976e0d3e33d3a353fe908275dbc74597e798ee8d908f0acb5849"
  license "MIT"

  bottle do
    root_url "https://github.com/owayo/astro-sight/releases/download/v26.4.123"
    sha256 cellar: :any_skip_relocation, arm64_sonoma: "367b21d0e4848793c577aba602233edb543e2439941fb637e30fb326598cbd96"
    sha256 cellar: :any_skip_relocation, sonoma: "385e6a4bf83c346de247da1334d00f16d34f5c1e5cf59677f5ab532651682e37"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "6f25d568e5c68a7b57ef95fe35f4c8226bd478816aceff19c30dd672c8cd309b"
  end

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    system "#{bin}/astro-sight", "--version"
  end
end
