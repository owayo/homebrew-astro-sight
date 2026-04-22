class AstroSight < Formula
  desc "AST information generator CLI for AI agents"
  homepage "https://github.com/owayo/astro-sight"
  url "https://github.com/owayo/astro-sight/archive/refs/tags/v26.4.117.tar.gz"
  sha256 "5d2915b18fa201d670ad94d7ec500fe394925b381c535f78524dde818cba7055"
  license "MIT"

  bottle do
    root_url "https://github.com/owayo/astro-sight/releases/download/v26.4.117"
    sha256 cellar: :any_skip_relocation, arm64_sonoma: "ab6cc877c3b72987de632d34fe5878c166bf1829b079c9d4ac61dcf29ab27879"
    sha256 cellar: :any_skip_relocation, sonoma: "de8da398ccb2acc2587a2481d4afeafe889cc8315a1885852d167288eb09f53c"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "b0cec879528c7ac228627dcb12fc730b5f8b3888822e105d22c946d7e8c7164b"
  end

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    system "#{bin}/astro-sight", "--version"
  end
end
