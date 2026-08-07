class AstroSight < Formula
  desc "AST information generator CLI for AI agents"
  homepage "https://github.com/owayo/astro-sight"
  url "https://github.com/owayo/astro-sight/archive/refs/tags/v26.8.103.tar.gz"
  sha256 "03b3563bc37a5318aba72a6ac0eb2968ea6c78a61447eb814207264c339978ba"
  license "MIT"

  bottle do
    root_url "https://github.com/owayo/astro-sight/releases/download/v26.8.103"
    sha256 cellar: :any_skip_relocation, arm64_sonoma: "fedf877d365b3979e612ffd81112cee1c972ed190337ddc98c3af673f44646e2"
    sha256 cellar: :any_skip_relocation, sonoma: "e6972f4c9df72496097feeb5463c2940de488888ae002d8a60fabea7f47d9ded"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "c2066f69895b0791397ea9b02ac09947903576f2dbee7d1e9acddbfaf15728ee"
  end

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    system "#{bin}/astro-sight", "--version"
  end
end
