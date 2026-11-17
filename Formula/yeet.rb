class Yeet < Formula
  desc "Native multiplatform agent CLI/TUI with a provider-neutral runtime and remote UI"
  homepage "https://github.com/kyooni18/Yeet"
  version "0.1.14"
  license "Apache-2.0"

  depends_on "node"

  on_macos do
    on_arm do
      url "https://github.com/kyooni18/Yeet/releases/download/v0.1.14/yeet-0.1.14-aarch64-apple-darwin.tar.gz"
      sha256 "aea91196c8491c0dfc26fceab2b1b9421f51fb7a9e83b31b2d11a78c85e1321b"
    end
    on_intel do
      url "https://github.com/kyooni18/Yeet/releases/download/v0.1.14/yeet-0.1.14-x86_64-apple-darwin.tar.gz"
      sha256 "2b9c1d981e623563300af7ac318d4ee3ad4a0fa67949a84a90ee735f596eb030"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/kyooni18/Yeet/releases/download/v0.1.14/yeet-0.1.14-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "ea1d5ec8b171436e6dd3376a26401e4a13845d1b6b00de046368aa747faac9d2"
    end
    on_intel do
      url "https://github.com/kyooni18/Yeet/releases/download/v0.1.14/yeet-0.1.14-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "e333c024ea9dbe2bb0a2f47202efdf1e992618fe28615b81cdce2f7912b19d32"
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
