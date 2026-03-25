class AstroSight < Formula
  desc "AST information generator CLI for AI agents"
  homepage "https://github.com/owayo/astro-sight"
  url "https://github.com/owayo/astro-sight/archive/refs/tags/v26.3.113.tar.gz"
  sha256 "06abcd12245d555c0f00761916f20bd5d5e1dbc0d0446458bdae3bed56750a40"
  license "MIT"

  bottle do
    root_url "https://github.com/owayo/astro-sight/releases/download/v26.3.113"
    sha256 cellar: :any_skip_relocation, arm64_sonoma: "ceb1f9f5f098c8eee202dbdae462a21b2f12169d7536e4a5ffd9ecfdcbf25b56"
    sha256 cellar: :any_skip_relocation, sonoma: "277b2b21a5c0e14a8722e7c341dd883c4c7704075fb27714f9bd202c13531b77"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "a923c4f087ef9be1205a7e25763134763128ad7618db95d468c93c25adfdc62c"
  end

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    system "#{bin}/astro-sight", "--version"
  end
end
