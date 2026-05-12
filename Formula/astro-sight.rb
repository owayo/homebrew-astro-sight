class AstroSight < Formula
  desc "AST information generator CLI for AI agents"
  homepage "https://github.com/owayo/astro-sight"
  url "https://github.com/owayo/astro-sight/archive/refs/tags/v26.5.114.tar.gz"
  sha256 "136e1019aeff1dde1a2d30e8fa01175620f3668cfa7b68538d0292f9a8d9f4a3"
  license "MIT"

  bottle do
    root_url "https://github.com/owayo/astro-sight/releases/download/v26.5.114"
    sha256 cellar: :any_skip_relocation, arm64_sonoma: "f800daef9aa874ff16569a4e4eaa0d0cf465c635eb699f9852585c43a6f94262"
    sha256 cellar: :any_skip_relocation, sonoma: "c352c28a7dd65b6cfd8238ddff20e7e33131df3d523649064888de28ffd5afa9"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "b811ea929bdf954b425b9ee25c7911de36f65ece9ecbd397320e7d913c3f388e"
  end

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    system "#{bin}/astro-sight", "--version"
  end
end
