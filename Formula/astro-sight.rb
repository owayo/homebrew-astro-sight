class AstroSight < Formula
  desc "AST information generator CLI for AI agents"
  homepage "https://github.com/owayo/astro-sight"
  url "https://github.com/owayo/astro-sight/archive/refs/tags/v26.6.114.tar.gz"
  sha256 "7420f6c641097bd3aa8a62fa9fb180088a25e3ebafba7b218def8b2365ac2f04"
  license "MIT"

  bottle do
    root_url "https://github.com/owayo/astro-sight/releases/download/v26.6.114"
    sha256 cellar: :any_skip_relocation, arm64_sonoma: "3455b0619719716aee690b694c0ba8485aeacd470b64de67d4cacdeaf0692318"
    sha256 cellar: :any_skip_relocation, sonoma: "c40a4c8ea5b0e6fc13eb9f5dbac992e84740badcf3e6b8804e844d154fe1c0e1"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "6584f17f80845ae5afbdc4334c410d62d971ca960f8deee55d63f5051e797a7d"
  end

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    system "#{bin}/astro-sight", "--version"
  end
end
