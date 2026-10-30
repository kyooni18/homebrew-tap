class Yeet < Formula
  desc "Native multiplatform agent CLI/TUI with a provider-neutral runtime and remote UI"
  homepage "https://github.com/kyooni18/Yeet"
  version "0.1.6"
  license "Apache-2.0"

  depends_on "node"

  on_macos do
    on_arm do
      url "https://github.com/kyooni18/Yeet/releases/download/v0.1.6/yeet-0.1.6-aarch64-apple-darwin.tar.gz"
      sha256 "a31aa6911e33a307fac10f518f9605542933265e86322e84e83275024887f384"
    end
    on_intel do
      url "https://github.com/kyooni18/Yeet/releases/download/v0.1.6/yeet-0.1.6-x86_64-apple-darwin.tar.gz"
      sha256 "1ce8f77b1e4c393df6946dc2e05c1b8a3181bf20710216abf86ee459145c95af"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/kyooni18/Yeet/releases/download/v0.1.6/yeet-0.1.6-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "f664b9f6946d467731af1e8da16d06b402af0623370fbbec7146a70871bf8bc6"
    end
    on_intel do
      url "https://github.com/kyooni18/Yeet/releases/download/v0.1.6/yeet-0.1.6-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "21fcbbb87a311aa144d230ed9b54ec7c51d9f7f58a4dc4ba2d3cc1a144075d91"
    end
  end

  def install
    bin.install "bin/yeet"
    (share/"yeet").install "share/yeet/runtime"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/yeet --version")
  end
end
