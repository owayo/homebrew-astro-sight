class AstroSight < Formula
  desc "AST information generator CLI for AI agents"
  homepage "https://github.com/owayo/astro-sight"
  url "https://github.com/owayo/astro-sight/archive/refs/tags/v26.7.100.tar.gz"
  sha256 "9a1b38735b5b90ded56b66519eb2d99eac158b5cab2b074f5d84d83c507094e1"
  license "MIT"

  bottle do
    root_url "https://github.com/owayo/astro-sight/releases/download/v26.7.100"
    sha256 cellar: :any_skip_relocation, arm64_sonoma: "51497c074b70de1920f0b25c4cfd4fef4ee89e10b664e451ec576d19a1222184"
    sha256 cellar: :any_skip_relocation, sonoma: "fe7be1a0c4a8395f41b18d2ef769df645f9869164c8a383923706f41e8a9a33e"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "0a3cdc32371040b9894ba9c54e712d76cedc1bff1d627bf79bd190e3103ad62c"
  end

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    system "#{bin}/astro-sight", "--version"
  end
end
