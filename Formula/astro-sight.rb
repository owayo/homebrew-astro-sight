class AstroSight < Formula
  desc "AST information generator CLI for AI agents"
  homepage "https://github.com/owayo/astro-sight"
  url "https://github.com/owayo/astro-sight/archive/refs/tags/v26.8.108.tar.gz"
  sha256 "0f75725bc7957ba63514857f442d2c5a3cf8735de4d5ddb263fe3a58fb42e382"
  license "MIT"

  bottle do
    root_url "https://github.com/owayo/astro-sight/releases/download/v26.8.108"
    sha256 cellar: :any_skip_relocation, arm64_sonoma: "4a9f3265ab1cd9481eded7abea0e1b390430060ecadc2b30bbbf8a773c160eb7"
    sha256 cellar: :any_skip_relocation, sonoma: "472bbeddd8a80c8833281f590ffb2bcd81ca3938606da5ee251eaa1303058422"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "bcfe250b1f5dfa305e711cd4c4e94b23e2dfa39d668a3b5f36a9074496fdf19e"
  end

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    system "#{bin}/astro-sight", "--version"
  end
end
