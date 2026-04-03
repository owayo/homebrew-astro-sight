class AstroSight < Formula
  desc "AST information generator CLI for AI agents"
  homepage "https://github.com/owayo/astro-sight"
  url "https://github.com/owayo/astro-sight/archive/refs/tags/v26.4.100.tar.gz"
  sha256 "c8a3b783127b5162bbf9c8a309136d4be151ae93638066b61f98e9b32f5ebdc3"
  license "MIT"

  bottle do
    root_url "https://github.com/owayo/astro-sight/releases/download/v26.4.100"
    sha256 cellar: :any_skip_relocation, arm64_sonoma: "bb64d19ab5b5f73adf54452384397ec3e3af193384422d37566a8966c9725bcc"
    sha256 cellar: :any_skip_relocation, sonoma: "2ab19f2016f46f48aebf51409736d9d60d876f2996493635af53e3bb30edcff5"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "fb0fbb2c85d33ee97082f13c25be47e70d4df0dbee354945add163391f0be729"
  end

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    system "#{bin}/astro-sight", "--version"
  end
end
