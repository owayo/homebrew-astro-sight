class AstroSight < Formula
  desc "AST information generator CLI for AI agents"
  homepage "https://github.com/owayo/astro-sight"
  url "https://github.com/owayo/astro-sight/archive/refs/tags/v26.5.112.tar.gz"
  sha256 "d9baeb9282a0de66c4f16236324853d9d77292d29b763b9db0d48c0681f49bbc"
  license "MIT"

  bottle do
    root_url "https://github.com/owayo/astro-sight/releases/download/v26.5.112"
    sha256 cellar: :any_skip_relocation, arm64_sonoma: "d63058955b446e969b742ec2afd8eba7d5d215cac029cc4687ea682fb7b43fbe"
    sha256 cellar: :any_skip_relocation, sonoma: "d96d055f80feb85276cb36ad482ba3ceb339ea68578ef867726c3c93baf28893"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "1ed2ba634727ae9e0d6408c38ae582f15d8dc216363804d8e06cd158635902b7"
  end

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    system "#{bin}/astro-sight", "--version"
  end
end
