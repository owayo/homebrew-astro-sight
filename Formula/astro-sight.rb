class AstroSight < Formula
  desc "AST information generator CLI for AI agents"
  homepage "https://github.com/owayo/astro-sight"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/owayo/astro-sight/releases/download/v26.10.109/astro-sight-aarch64-apple-darwin.tar.gz"
      sha256 "164c45d1303fda837fc9a9e4bf87f9388f3c46623be80d2a955be72b0196459b"
    else
      url "https://github.com/owayo/astro-sight/releases/download/v26.10.109/astro-sight-x86_64-apple-darwin.tar.gz"
      sha256 "b76191074e0d62434da04c393453330e4d4e08891b0d1552d76107854820b6aa"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/owayo/astro-sight/releases/download/v26.10.109/astro-sight-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "535e5cdac4da928fe0abb8824b2e175c70c7b330c98247a1d4821028edda12d6"
    else
      url "https://github.com/owayo/astro-sight/releases/download/v26.10.109/astro-sight-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "e11b8b184803035c5f0fa014d9ae3991f7637f2065cc92962386a275930f703a"
    end
  end

  def install
    bin.install "astro-sight"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/astro-sight --version")
  end
end
