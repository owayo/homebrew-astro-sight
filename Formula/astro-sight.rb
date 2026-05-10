class AstroSight < Formula
  desc "AST information generator CLI for AI agents"
  homepage "https://github.com/owayo/astro-sight"
  url "https://github.com/owayo/astro-sight/archive/refs/tags/v26.5.111.tar.gz"
  sha256 "ada9bd9f2cfbf7e5e2aa1418cb9d01b4a6c872d99b2039b46a9fae4e73b64d00"
  license "MIT"

  bottle do
    root_url "https://github.com/owayo/astro-sight/releases/download/v26.5.111"
    sha256 cellar: :any_skip_relocation, arm64_sonoma: "4959912b0dbca8c7f4b1ca264b1617edfd854c3db76f0eeced6c1c140e959da7"
    sha256 cellar: :any_skip_relocation, sonoma: "06780296d5668960baabffe2066267d599b550e8ebb6dea28c76b68fc5c419b6"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "8d4c94cda34d0f507993d4a04050e83f7cf0ba2644c55dc596337e933cde11c2"
  end

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    system "#{bin}/astro-sight", "--version"
  end
end
