class AstroSight < Formula
  desc "AST information generator CLI for AI agents"
  homepage "https://github.com/owayo/astro-sight"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/owayo/astro-sight/releases/download/v26.10.115/astro-sight-aarch64-apple-darwin.tar.gz"
      sha256 "fa045cbdb139ae995b367ba48f19b6b4afb5b88d3b2f9a60104192c7a37a852f"
    else
      url "https://github.com/owayo/astro-sight/releases/download/v26.10.115/astro-sight-x86_64-apple-darwin.tar.gz"
      sha256 "5a27c0c7dda921dbd8816d51ac70873077e2219636a989b4202c6b316c6d0dae"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/owayo/astro-sight/releases/download/v26.10.115/astro-sight-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "71ecd693a6f72a201529b7cab53d69aa9f46633a856fb115689ab992ebc833dd"
    else
      url "https://github.com/owayo/astro-sight/releases/download/v26.10.115/astro-sight-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "c8599e6698e96165344640592c86d064ebd0cf8fe6a0ba97f7fd5aa6344b35a2"
    end
  end

  def install
    bin.install "astro-sight"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/astro-sight --version")
  end
end
