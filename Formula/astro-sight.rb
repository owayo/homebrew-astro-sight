class AstroSight < Formula
  desc "AST information generator CLI for AI agents"
  homepage "https://github.com/owayo/astro-sight"
  url "https://github.com/owayo/astro-sight/archive/refs/tags/v26.5.117.tar.gz"
  sha256 "cf1651e4cfa237ee8a83b8430bbaff5d219a9601ee99fdc72929431402cb7f84"
  license "MIT"

  bottle do
    root_url "https://github.com/owayo/astro-sight/releases/download/v26.5.117"
    sha256 cellar: :any_skip_relocation, arm64_sonoma: "bbf08598fa01c3d6b95a7b3762638d593f682c52f82ff7a23691e47e04ef7729"
    sha256 cellar: :any_skip_relocation, sonoma: "29ab55108e2d482a53b9e288fff8d4118f2e71460a09c01f82e31deaae79af07"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "b5982f0fc41d5ed14232684d5df44ba726eb72842b9715097abf9089c38861d9"
  end

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    system "#{bin}/astro-sight", "--version"
  end
end
