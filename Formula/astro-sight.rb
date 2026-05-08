class AstroSight < Formula
  desc "AST information generator CLI for AI agents"
  homepage "https://github.com/owayo/astro-sight"
  url "https://github.com/owayo/astro-sight/archive/refs/tags/v26.5.107.tar.gz"
  sha256 "d684b3e3bbfed41d4eca1d2423c90b123ede45549983133d8b45ac6e437a6a8f"
  license "MIT"

  bottle do
    root_url "https://github.com/owayo/astro-sight/releases/download/v26.5.107"
    sha256 cellar: :any_skip_relocation, arm64_sonoma: "7de12e72a4be6a80343b22b11362696af5c880ed1bf4f151274c4506bd677c5f"
    sha256 cellar: :any_skip_relocation, sonoma: "2157175ccd121c2a4933794fed7f78bc33c92e88c69857484f0eb9d7ff1f7f68"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "4326bc032aa01169f9b812d99cf208e89638ac4fb3e2bec443558d53c05de98b"
  end

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    system "#{bin}/astro-sight", "--version"
  end
end
