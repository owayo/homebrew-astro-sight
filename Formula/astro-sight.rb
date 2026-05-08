class AstroSight < Formula
  desc "AST information generator CLI for AI agents"
  homepage "https://github.com/owayo/astro-sight"
  url "https://github.com/owayo/astro-sight/archive/refs/tags/v26.5.106.tar.gz"
  sha256 "6831d05f60c9e3a739d2f4287d5b2939b5ba015d1a2eede5f702b50c73928d37"
  license "MIT"

  bottle do
    root_url "https://github.com/owayo/astro-sight/releases/download/v26.5.106"
    sha256 cellar: :any_skip_relocation, arm64_sonoma: "ed87c370da82496a7c513ea6c36166b065066f39a83edef28ae6e7b7f045a63c"
    sha256 cellar: :any_skip_relocation, sonoma: "0371727bd1f045ccd0ff951465db8c2991d95fcd2f891b23bc8ef3c286ae9e4b"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "2b80c4d7bbf4e0ee1eb57e9f2a54de21c55034b06194173ecd14dc99b30e8ddf"
  end

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    system "#{bin}/astro-sight", "--version"
  end
end
