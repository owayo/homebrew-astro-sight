class AstroSight < Formula
  desc "AST information generator CLI for AI agents"
  homepage "https://github.com/owayo/astro-sight"
  url "https://github.com/owayo/astro-sight/archive/refs/tags/v26.5.104.tar.gz"
  sha256 "229dca50ac474ab3e80637ef733e6fd394bacae65aacbeb514fba4996ec59779"
  license "MIT"

  bottle do
    root_url "https://github.com/owayo/astro-sight/releases/download/v26.5.104"
    sha256 cellar: :any_skip_relocation, arm64_sonoma: "c4126fdf9e8cba070a0fab815e5e91ac689302a5a875e09c550845c5905c4271"
    sha256 cellar: :any_skip_relocation, sonoma: "c20a7d2bca2b1953d7ff38bd272119088bb9f2c9704bd5006f0dfe5707481db6"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "448218b223ee918667966b6cdb9c56bc4f336c46a4138270fc174ac1bebb5118"
  end

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    system "#{bin}/astro-sight", "--version"
  end
end
