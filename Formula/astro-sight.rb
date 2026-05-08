class AstroSight < Formula
  desc "AST information generator CLI for AI agents"
  homepage "https://github.com/owayo/astro-sight"
  url "https://github.com/owayo/astro-sight/archive/refs/tags/v26.5.102.tar.gz"
  sha256 "14510104c3c2f9ff14d3bbfb9f1982a066b2be1e91c8c3b154b50803a018e064"
  license "MIT"

  bottle do
    root_url "https://github.com/owayo/astro-sight/releases/download/v26.5.102"
    sha256 cellar: :any_skip_relocation, arm64_sonoma: "3a4ebe6f99b507ad82c3ff305bdf59e09ba0ec655677c38cbc80e7cd8fc1b500"
    sha256 cellar: :any_skip_relocation, sonoma: "22bb43085eec0776d07fc09ab4c3d7e06eb4bcbe50fbdd8ad3ec52091082f0cd"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "949429cba40caf6724c8ee27a52cfbcb05227b272a14a2028d73ff7bd64edfb3"
  end

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    system "#{bin}/astro-sight", "--version"
  end
end
