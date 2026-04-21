class AstroSight < Formula
  desc "AST information generator CLI for AI agents"
  homepage "https://github.com/owayo/astro-sight"
  url "https://github.com/owayo/astro-sight/archive/refs/tags/v26.4.116.tar.gz"
  sha256 "89a19474a064ff1a1798ce3c6a32c4f58c9325782fca43bec2f5f4f9bf3c37af"
  license "MIT"

  bottle do
    root_url "https://github.com/owayo/astro-sight/releases/download/v26.4.116"
    sha256 cellar: :any_skip_relocation, arm64_sonoma: "d36eabdba46668a70eee751723db42b3392473e0afec0cef2bcd17b56dc47578"
    sha256 cellar: :any_skip_relocation, sonoma: "1c1e212a231736c94ec3a189cddf18c323d7425da225e0ba20ecc518ccdd50dc"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "7729f2d33bef7617344e061c2cf7c0991c5ed74ad8a0a48723b78ca49147db30"
  end

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    system "#{bin}/astro-sight", "--version"
  end
end
