class AstroSight < Formula
  desc "AST information generator CLI for AI agents"
  homepage "https://github.com/owayo/astro-sight"
  url "https://github.com/owayo/astro-sight/archive/refs/tags/v26.7.108.tar.gz"
  sha256 "be4271d0219baaa9c0fda9c8ed0fd6da64e184386f2f81d7700f1910ce59bdb3"
  license "MIT"

  bottle do
    root_url "https://github.com/owayo/astro-sight/releases/download/v26.7.108"
    sha256 cellar: :any_skip_relocation, arm64_sonoma: "5d9dfd6f7f2737a1ff0db69abfbab037ad6ae0eaf65124ae971bba06aadc20b1"
    sha256 cellar: :any_skip_relocation, sonoma: "a69a2d9a3accc08e33b116f2867e13191eade75ca87c55c9976667d1ec97b4fe"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "3e458c37df737865b44bfae33036d4ff334af719201af575d1d1a62634151c86"
  end

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    system "#{bin}/astro-sight", "--version"
  end
end
