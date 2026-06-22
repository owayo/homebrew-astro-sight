class AstroSight < Formula
  desc "AST information generator CLI for AI agents"
  homepage "https://github.com/owayo/astro-sight"
  url "https://github.com/owayo/astro-sight/archive/refs/tags/v26.6.113.tar.gz"
  sha256 "c5a2c29e1bf1c6e055516efcb619fa9deef509112e4b1d83e9f8134c195fffea"
  license "MIT"

  bottle do
    root_url "https://github.com/owayo/astro-sight/releases/download/v26.6.113"
    sha256 cellar: :any_skip_relocation, arm64_sonoma: "d813f55bd0d4e5addf9f5e1b33b8918906de100e5fa213147e7571139509e9e8"
    sha256 cellar: :any_skip_relocation, sonoma: "a4ebb8ba2f99d5b5c71d4c35f9a2c5dc076e074aed7d40c0c6cb3381dfec886d"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "df2c91ab34313944f049a9358a418ddb7980426e0058597a6290f0fe2d1d9a57"
  end

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    system "#{bin}/astro-sight", "--version"
  end
end
