class AstroSight < Formula
  desc "AST information generator CLI for AI agents"
  homepage "https://github.com/owayo/astro-sight"
  url "https://github.com/owayo/astro-sight/archive/refs/tags/v26.8.107.tar.gz"
  sha256 "aa886d35b4caf08dadb24ef557c8646e37bdc1df948ff5e358f0dfd57f9cc045"
  license "MIT"

  bottle do
    root_url "https://github.com/owayo/astro-sight/releases/download/v26.8.107"
    sha256 cellar: :any_skip_relocation, arm64_sonoma: "ee59991e2e746c009ffb6d4dbcfcf3559a98f6fc0de5f6340a1df2877d2b97e4"
    sha256 cellar: :any_skip_relocation, sonoma: "54afa596c12ad051919e37c46bb7295631f8c96fe6c9c503e255a7d7e44e213d"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "7d6b283c536abe49ff2a469a773983301c6973587ef62fd55a7493126b8eb56f"
  end

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    system "#{bin}/astro-sight", "--version"
  end
end
