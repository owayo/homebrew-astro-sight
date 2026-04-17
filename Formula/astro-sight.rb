class AstroSight < Formula
  desc "AST information generator CLI for AI agents"
  homepage "https://github.com/owayo/astro-sight"
  url "https://github.com/owayo/astro-sight/archive/refs/tags/v26.4.110.tar.gz"
  sha256 "e7978087de8ab1e0ebbd43d9074864d11703ce0af7cea224b0bdaf70ea3d4a57"
  license "MIT"

  bottle do
    root_url "https://github.com/owayo/astro-sight/releases/download/v26.4.110"
    sha256 cellar: :any_skip_relocation, arm64_sonoma: "d40400e341624d2ea395cd2437ccd89d205cbc7d062334830429e48ecdee91b7"
    sha256 cellar: :any_skip_relocation, sonoma: "d32e2adde77605a326b34815a5880d1b68449c557d7feecfa700178dbc5523c6"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "03fac931950301d57145a5c102f7ea324f1b938d852305f2dcabe67993e60478"
  end

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    system "#{bin}/astro-sight", "--version"
  end
end
