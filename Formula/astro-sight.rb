class AstroSight < Formula
  desc "AST information generator CLI for AI agents"
  homepage "https://github.com/owayo/astro-sight"
  url "https://github.com/owayo/astro-sight/archive/refs/tags/v26.9.100.tar.gz"
  sha256 "f6c40331aeb88849ed01a2ea0d61bd61f7760d5e7cb6a5cc7adabf3f9b014d3c"
  license "MIT"

  bottle do
    root_url "https://github.com/owayo/astro-sight/releases/download/v26.9.100"
    sha256 cellar: :any_skip_relocation, arm64_sonoma: "a0d3a9b06ae09614ef39abf00a5645d608165b0698105538bd2da050fe451f3e"
    sha256 cellar: :any_skip_relocation, sonoma: "403e954225d834371d7087e4df42000cd078cdbb3455cabd653a36dedb137d37"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "9ad10b349c63d7a4128f0db99b1f61d20407484696fb15872a84f41794b25f08"
  end

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    system "#{bin}/astro-sight", "--version"
  end
end
