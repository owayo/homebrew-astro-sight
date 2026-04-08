class AstroSight < Formula
  desc "AST information generator CLI for AI agents"
  homepage "https://github.com/owayo/astro-sight"
  url "https://github.com/owayo/astro-sight/archive/refs/tags/v26.4.102.tar.gz"
  sha256 "34ff9f10124c46403a8e4a25fd2f7a4c1469d76ad07c00772393b84d8b9b227a"
  license "MIT"

  bottle do
    root_url "https://github.com/owayo/astro-sight/releases/download/v26.4.102"
    sha256 cellar: :any_skip_relocation, arm64_sonoma: "9578f51f87e4910bfc39e1546f99a20cb8ba527f64bdf0418974120789e0d09e"
    sha256 cellar: :any_skip_relocation, sonoma: "10f40baace59e25b0e3c4ff8595e206cc2fb79f821ec9fc7e804053240cb3073"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "c02d4e0559c3463ba92057451d4692f8eb23a3df9e5dd65ab91b50b79b6933f9"
  end

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    system "#{bin}/astro-sight", "--version"
  end
end
