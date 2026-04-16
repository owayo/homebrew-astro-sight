class AstroSight < Formula
  desc "AST information generator CLI for AI agents"
  homepage "https://github.com/owayo/astro-sight"
  url "https://github.com/owayo/astro-sight/archive/refs/tags/v26.4.108.tar.gz"
  sha256 "2f41ae1cfa59ca8e6209cca8ab3864539bb26c4252c9dcf41f1381eb29005918"
  license "MIT"

  bottle do
    root_url "https://github.com/owayo/astro-sight/releases/download/v26.4.108"
    sha256 cellar: :any_skip_relocation, arm64_sonoma: "b125b02a15841a36b3b3db8327c175788f6385be07373ab39a76958c4f03ccf1"
    sha256 cellar: :any_skip_relocation, sonoma: "31d37b1208de22e217c6f4d1297311d330ee55762f6e0c63ff6bc86b8926ad9d"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "e3978870c5130222e7ce33427d232945fd2f43f1a6d34ebd60b20c9d5ba24e4f"
  end

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    system "#{bin}/astro-sight", "--version"
  end
end
