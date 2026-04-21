class AstroSight < Formula
  desc "AST information generator CLI for AI agents"
  homepage "https://github.com/owayo/astro-sight"
  url "https://github.com/owayo/astro-sight/archive/refs/tags/v26.4.115.tar.gz"
  sha256 "f4515f766fae2b7cf0d17b38766ca3747c909e824e91c479b4caccd6c48823cc"
  license "MIT"

  bottle do
    root_url "https://github.com/owayo/astro-sight/releases/download/v26.4.115"
    sha256 cellar: :any_skip_relocation, arm64_sonoma: "55e8d8180bb3a6c0d67d224b152d36628ceb40e7eaeca060a6186230b79dfc63"
    sha256 cellar: :any_skip_relocation, sonoma: "ae1ac2447427658fce5ee8eba43cbfd79975ea19b2a2340e10fd07591521f4b9"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "e2e3c67eb4e0f48399a7bf00ab81a026c1be89c41fba4320058642ca36f6abe5"
  end

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    system "#{bin}/astro-sight", "--version"
  end
end
