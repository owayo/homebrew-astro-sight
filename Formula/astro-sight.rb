class AstroSight < Formula
  desc "AST information generator CLI for AI agents"
  homepage "https://github.com/owayo/astro-sight"
  url "https://github.com/owayo/astro-sight/archive/refs/tags/v26.4.106.tar.gz"
  sha256 "b58c899640bf0a7a80f8fab06da2f72605dd6b1e59d003810efec979182fd234"
  license "MIT"

  bottle do
    root_url "https://github.com/owayo/astro-sight/releases/download/v26.4.106"
    sha256 cellar: :any_skip_relocation, arm64_sonoma: "bf9c54c05515a0091059277d6bc76c21857ff4f140b8bced52910cc02a1585a8"
    sha256 cellar: :any_skip_relocation, sonoma: "98b74873d4d49d9e9d52464457e9f3a9af2792dfc7b704e9e9906f552ec5bad4"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "51e53c691ef5adeecfc86046f42ef53f43f4d4409df229740cb7f0da87cd20e6"
  end

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    system "#{bin}/astro-sight", "--version"
  end
end
