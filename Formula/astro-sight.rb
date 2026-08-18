class AstroSight < Formula
  desc "AST information generator CLI for AI agents"
  homepage "https://github.com/owayo/astro-sight"
  url "https://github.com/owayo/astro-sight/archive/refs/tags/v26.8.106.tar.gz"
  sha256 "efcf634660466a6d44da4d8a13ef070bad6521861793eab8a481e80c22b8eaaa"
  license "MIT"

  bottle do
    root_url "https://github.com/owayo/astro-sight/releases/download/v26.8.106"
    sha256 cellar: :any_skip_relocation, arm64_sonoma: "c7d3ee085972ce98d0e015ae9e85fbb537fd3b017b6c91e500469693c6954319"
    sha256 cellar: :any_skip_relocation, sonoma: "8904104a6f6936d449560e5e92f746fe25dc8be767fce551c8d226ee39a768f5"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "7cb2c9c7456c411604bfe85f118027cd37f769ea1d0393ce19832cd9f95fdf8e"
  end

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    system "#{bin}/astro-sight", "--version"
  end
end
