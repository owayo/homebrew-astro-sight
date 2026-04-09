class AstroSight < Formula
  desc "AST information generator CLI for AI agents"
  homepage "https://github.com/owayo/astro-sight"
  url "https://github.com/owayo/astro-sight/archive/refs/tags/v26.4.103.tar.gz"
  sha256 "bfe079fe4c5a6f6652d8312d4d81cf590b4226cc9f0c979855f631cb0870819f"
  license "MIT"

  bottle do
    root_url "https://github.com/owayo/astro-sight/releases/download/v26.4.103"
    sha256 cellar: :any_skip_relocation, arm64_sonoma: "b5358cc7d407cbd467df4d4ab95fd4d4607f6c2d6e1ee6e55294244edf3cfa03"
    sha256 cellar: :any_skip_relocation, sonoma: "9ba1694d440f468f7d5bf8bc4a43274a53f368e001cec4c9393b08a1771d5262"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "6e5a7a94da13f67c225077361a2ebd0bc35f0c390f21c8113ca3784336db38ad"
  end

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    system "#{bin}/astro-sight", "--version"
  end
end
