class AstroSight < Formula
  desc "AST information generator CLI for AI agents"
  homepage "https://github.com/owayo/astro-sight"
  url "https://github.com/owayo/astro-sight/archive/refs/tags/v26.4.124.tar.gz"
  sha256 "26a2b46fe14f051dfcc484ef5651c11ffe3096911cb80cf9f3790eef8fda389c"
  license "MIT"

  bottle do
    root_url "https://github.com/owayo/astro-sight/releases/download/v26.4.124"
    sha256 cellar: :any_skip_relocation, arm64_sonoma: "a3dd0c887ae63c6845c3ee1f1490a3d70a77ca77a030248e65c79e0e27de2e92"
    sha256 cellar: :any_skip_relocation, sonoma: "cb9ddaedb2037d86ebc198c8385a0661ac5ee46a0e8bcb0b3b457f64a296174b"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "1828fbd0192d2f213c7b4cd8b36d1951a5f161e44e9156e65012d0653fd5e00d"
  end

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    system "#{bin}/astro-sight", "--version"
  end
end
