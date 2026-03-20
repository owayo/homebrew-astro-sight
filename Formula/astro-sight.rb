class AstroSight < Formula
  desc "AST information generator CLI for AI agents"
  homepage "https://github.com/owayo/astro-sight"
  url "https://github.com/owayo/astro-sight/archive/refs/tags/v26.3.112.tar.gz"
  sha256 "a049c864b6564dadd78da8b1ac1edbe1dfccaaed4c745d815ab123ac5c33559b"
  license "MIT"

  bottle do
    root_url "https://github.com/owayo/astro-sight/releases/download/v26.3.112"
    sha256 cellar: :any_skip_relocation, arm64_sonoma: "3b94e7a115ebeb751ff03fd325173beffa816bd31ecbebd9efc5e451ee942ec5"
    sha256 cellar: :any_skip_relocation, sonoma: "ec5566d50d077b4df2ab5b97538f07d7731f4d37844dfe78923ebe70a726e3a4"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "6df4716463b25419e4698f9b18fc72cf1de318efe44ad9d9401c5696fd821b7a"
  end

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    system "#{bin}/astro-sight", "--version"
  end
end
