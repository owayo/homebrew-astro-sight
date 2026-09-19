class AstroSight < Formula
  desc "AST information generator CLI for AI agents"
  homepage "https://github.com/owayo/astro-sight"
  url "https://github.com/owayo/astro-sight/archive/refs/tags/v26.9.102.tar.gz"
  sha256 "b8ed35fb5ff4f5dc73616d4fe746cdc6df7b3dafab4a8a4b8c416ce44897d6d3"
  license "MIT"

  bottle do
    root_url "https://github.com/owayo/astro-sight/releases/download/v26.9.102"
    sha256 cellar: :any_skip_relocation, arm64_sonoma: "0270ae8c12a9560eca75f76bf03e0a304421f33d4d74528f16c3b7f0d059983f"
    sha256 cellar: :any_skip_relocation, sonoma: "67ddc941474dea3356d7a3de9aec0199113258c55e9e9ba7e7c90993308fbb60"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "dc7b3b91e2559dd4c6c7caa75b80a921975b9c87e3706386b31e29750c16164e"
  end

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    system "#{bin}/astro-sight", "--version"
  end
end
