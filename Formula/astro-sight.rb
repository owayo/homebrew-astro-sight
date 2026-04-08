class AstroSight < Formula
  desc "AST information generator CLI for AI agents"
  homepage "https://github.com/owayo/astro-sight"
  url "https://github.com/owayo/astro-sight/archive/refs/tags/v26.4.101.tar.gz"
  sha256 "599c11c0259cdc754f7babdaacd46a1f2cc50093b699f71dd46d4225e489721b"
  license "MIT"

  bottle do
    root_url "https://github.com/owayo/astro-sight/releases/download/v26.4.101"
    sha256 cellar: :any_skip_relocation, arm64_sonoma: "b981ded047853c2013099b58fbf63fd100949c33a287f02116dff355b1f1c2a2"
    sha256 cellar: :any_skip_relocation, sonoma: "5260c893d782c5165de071f485c924a015a57ed06540c35ada1caa11ad085a11"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "b00c02bc3e681ff6492a13fb1b44c9c17b8cb4d43baf37039992ec0d025d5c11"
  end

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    system "#{bin}/astro-sight", "--version"
  end
end
