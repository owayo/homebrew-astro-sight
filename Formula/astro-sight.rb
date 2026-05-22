class AstroSight < Formula
  desc "AST information generator CLI for AI agents"
  homepage "https://github.com/owayo/astro-sight"
  url "https://github.com/owayo/astro-sight/archive/refs/tags/v26.5.123.tar.gz"
  sha256 "c017e9ec2289bcc148d568058ca63c45fefa22bfaabd5a35c209d0f15c68c587"
  license "MIT"

  bottle do
    root_url "https://github.com/owayo/astro-sight/releases/download/v26.5.123"
    sha256 cellar: :any_skip_relocation, arm64_sonoma: "0b688f9f214f74e8c48af7294a8de4493d788c3775ad97c07ff3e7545d25f781"
    sha256 cellar: :any_skip_relocation, sonoma: "cb7ce8f64e0a6f531f34090eed0639d7c139fb445943bf90e9f0d43fcf4ba7f1"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "0ecb2e1874b34229f7b2d544b216bc5856ae1bcda98c11f9b15d51c35bfa5a7c"
  end

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    system "#{bin}/astro-sight", "--version"
  end
end
