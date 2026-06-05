class AstroSight < Formula
  desc "AST information generator CLI for AI agents"
  homepage "https://github.com/owayo/astro-sight"
  url "https://github.com/owayo/astro-sight/archive/refs/tags/v26.6.103.tar.gz"
  sha256 "19fc0b0ecf2049c6d49a621b758575e72ab648036e04e6294b8186c7b393f332"
  license "MIT"

  bottle do
    root_url "https://github.com/owayo/astro-sight/releases/download/v26.6.103"
    sha256 cellar: :any_skip_relocation, arm64_sonoma: "48a2cac12086051b45d94498ac1800dc1c292252787f0aaed3a66bac883340ac"
    sha256 cellar: :any_skip_relocation, sonoma: "f97686678aab2aa86ae960295cc3d19230098ea42c477c9e754cf9db57b84eba"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "54c861e638281e5c7613d6536e28d2d5c11fad6ff5cec747216acc6a047411f3"
  end

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    system "#{bin}/astro-sight", "--version"
  end
end
