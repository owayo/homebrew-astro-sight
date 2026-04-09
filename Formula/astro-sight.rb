class AstroSight < Formula
  desc "AST information generator CLI for AI agents"
  homepage "https://github.com/owayo/astro-sight"
  url "https://github.com/owayo/astro-sight/archive/refs/tags/v26.4.104.tar.gz"
  sha256 "1197d7dfb8bda5a08e142d8bad75c4defc7ed390c51b45ceb225a5b6e9b37db9"
  license "MIT"

  bottle do
    root_url "https://github.com/owayo/astro-sight/releases/download/v26.4.104"
    sha256 cellar: :any_skip_relocation, arm64_sonoma: "8bc0e4c5c068838a0678c70ce7969e361e9084b4c3fbd6c6e7f4d3ed73a4d13a"
    sha256 cellar: :any_skip_relocation, sonoma: "6da18e83d98ace1394f3dc464f5244efcbd2c44d3dfdcb8c907260e27809f180"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "ffb9c63650731541eb3075512db504f85b5e4d6bd23327bf662826cf5f4a56fa"
  end

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    system "#{bin}/astro-sight", "--version"
  end
end
