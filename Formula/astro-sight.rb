class AstroSight < Formula
  desc "AST information generator CLI for AI agents"
  homepage "https://github.com/owayo/astro-sight"
  url "https://github.com/owayo/astro-sight/archive/refs/tags/v26.5.103.tar.gz"
  sha256 "423050e2e59b8af6332b7aece30af9731a5ba5e81aa899ec12b8213e32e7fc74"
  license "MIT"

  bottle do
    root_url "https://github.com/owayo/astro-sight/releases/download/v26.5.103"
    sha256 cellar: :any_skip_relocation, arm64_sonoma: "d44fe680c88ab10b99d63a19b0bcaf541f9e20e6fab73925c6a6b67de5ce2bfa"
    sha256 cellar: :any_skip_relocation, sonoma: "f094387a8a0a488997c23c7ba8ddab047900648eb1b5625592243e493c65ff43"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "b421da03aa54131393cf1eccbded071d7b3566dfa587c8ed325d3b4adf0e07f1"
  end

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    system "#{bin}/astro-sight", "--version"
  end
end
