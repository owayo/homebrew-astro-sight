class AstroSight < Formula
  desc "AST information generator CLI for AI agents"
  homepage "https://github.com/owayo/astro-sight"
  url "https://github.com/owayo/astro-sight/archive/refs/tags/v26.8.111.tar.gz"
  sha256 "a527f85cebacb23686befb6e592ab40872bce0fc3cb64b048c3b9ddd8b6ae19b"
  license "MIT"

  bottle do
    root_url "https://github.com/owayo/astro-sight/releases/download/v26.8.111"
    sha256 cellar: :any_skip_relocation, arm64_sonoma: "41340fc7c4f3a233166e6a5558603e086f5851a4e7068ea2338fcbf6f08861c1"
    sha256 cellar: :any_skip_relocation, sonoma: "b4ef5bfa96a9fe0855629ff4d19b0616cae77ce5a3a73e43da10faaf015ae5c7"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "1d49c8d79579f52adb500f1cff9af490216ddb4d3e9146144932a1a3ed831eb0"
  end

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    system "#{bin}/astro-sight", "--version"
  end
end
