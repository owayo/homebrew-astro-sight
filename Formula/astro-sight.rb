class AstroSight < Formula
  desc "AST information generator CLI for AI agents"
  homepage "https://github.com/owayo/astro-sight"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/owayo/astro-sight/releases/download/v26.11.102/astro-sight-aarch64-apple-darwin.tar.gz"
      sha256 "c099e4fa4918b24ed57e8347d35a15552802a4288d7638f6069f2f7920ea32ef"
    else
      url "https://github.com/owayo/astro-sight/releases/download/v26.11.102/astro-sight-x86_64-apple-darwin.tar.gz"
      sha256 "f1b65632efd769857af263452a2dc2c992cab852e3b0d027b146a53489c848cd"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/owayo/astro-sight/releases/download/v26.11.102/astro-sight-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "93a64e932c025de180ba7ad7747ac66e3035c87b854874562b5e5849e3df6b27"
    else
      url "https://github.com/owayo/astro-sight/releases/download/v26.11.102/astro-sight-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "4f35f61eafef45a87243ac3ef72de9a5a4ed8e31710b7f6757725dd8250a12ce"
    end
  end

  def install
    bin.install "astro-sight"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/astro-sight --version")
  end
end
