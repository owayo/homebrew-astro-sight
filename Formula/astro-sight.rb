class AstroSight < Formula
  desc "AST information generator CLI for AI agents"
  homepage "https://github.com/owayo/astro-sight"
  url "https://github.com/owayo/astro-sight/archive/refs/tags/v26.4.118.tar.gz"
  sha256 "594df4ca61f6d7ba4c2b17fea4743bc80a20a4ea169538b1c52b243c9ef54e52"
  license "MIT"

  bottle do
    root_url "https://github.com/owayo/astro-sight/releases/download/v26.4.118"
    sha256 cellar: :any_skip_relocation, arm64_sonoma: "2ffe3aac50720c89e0c996272882446b4057292c52484c1b69610d50acfa0815"
    sha256 cellar: :any_skip_relocation, sonoma: "50595d774ca3f564c2ec5c93cde099870679b4562694d1eb43aa3b6eb9e4d50c"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "4e8f7f862f00dd9cb5db364c386e5c4616c858b321307e7d5f4d9fe63c4b9eca"
  end

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    system "#{bin}/astro-sight", "--version"
  end
end
