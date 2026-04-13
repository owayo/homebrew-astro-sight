class AstroSight < Formula
  desc "AST information generator CLI for AI agents"
  homepage "https://github.com/owayo/astro-sight"
  url "https://github.com/owayo/astro-sight/archive/refs/tags/v26.4.107.tar.gz"
  sha256 "e627e952b35685481b7105e95ba9de608887a82736a72e2ad0e44fe3090fed25"
  license "MIT"

  bottle do
    root_url "https://github.com/owayo/astro-sight/releases/download/v26.4.107"
    sha256 cellar: :any_skip_relocation, arm64_sonoma: "9c80044c227ae93cc4be1d63898136be9e74c168a468317967977c2d24550a45"
    sha256 cellar: :any_skip_relocation, sonoma: "f0ffcea79f5b0dde941ac0e5540a93e557b0cb310d4c6bb77978e64042a5396d"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "a7a300a5f0bb604691e0b110ce0ca6329a81ef6ffd56a9cb1a01a5a8e590a007"
  end

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    system "#{bin}/astro-sight", "--version"
  end
end
