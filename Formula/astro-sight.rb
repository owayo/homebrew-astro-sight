class AstroSight < Formula
  desc "AST information generator CLI for AI agents"
  homepage "https://github.com/owayo/astro-sight"
  url "https://github.com/owayo/astro-sight/archive/refs/tags/v26.5.121.tar.gz"
  sha256 "9a9dd7b78fc72e6003c56f7ab070fef3b7c8bd353e7e9956392449afcf49fe31"
  license "MIT"

  bottle do
    root_url "https://github.com/owayo/astro-sight/releases/download/v26.5.121"
    sha256 cellar: :any_skip_relocation, arm64_sonoma: "ee68f2da456ec80ecb7ac86fd89e67b69ed8f86673eed2d4b4494612e8cbb267"
    sha256 cellar: :any_skip_relocation, sonoma: "0c08a4339003d802e3226a170a5384823788e8a01cdb35e5df9607177ef7d576"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "59d34709c15185fd1771b1c7bcc1c14a6cf665083eb8600591835c45dd36eaa0"
  end

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    system "#{bin}/astro-sight", "--version"
  end
end
