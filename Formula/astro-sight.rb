class AstroSight < Formula
  desc "AST information generator CLI for AI agents"
  homepage "https://github.com/owayo/astro-sight"
  url "https://github.com/owayo/astro-sight/archive/refs/tags/v26.8.104.tar.gz"
  sha256 "315ca57924ad20b572b024f0174835c88bc21ecdb69bca98f3a91b99fb72681b"
  license "MIT"

  bottle do
    root_url "https://github.com/owayo/astro-sight/releases/download/v26.8.104"
    sha256 cellar: :any_skip_relocation, arm64_sonoma: "e78f8b5ce8fba081f10721cdf7c302d96f52a90a9fcfe28bdd817fa21fae31a8"
    sha256 cellar: :any_skip_relocation, sonoma: "c774a793ce9e539049d52e63ba4d0c04c952f79ad43c6e0fdd5eb62de8f98382"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "97166fc39e246970c62b22f42ee8874e16a96136940fae1735654f311d718cef"
  end

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    system "#{bin}/astro-sight", "--version"
  end
end
