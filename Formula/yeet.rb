class Yeet < Formula
  desc "Native multiplatform agent CLI/TUI with a provider-neutral runtime and remote UI"
  homepage "https://github.com/kyooni18/Yeet"
  version "0.1.5"
  license "Apache-2.0"

  depends_on "node"

  on_macos do
    on_arm do
      url "https://github.com/kyooni18/Yeet/releases/download/v0.1.5/yeet-0.1.5-aarch64-apple-darwin.tar.gz"
      sha256 "2341bf160f894c022b987787be878ebfad10e485afb3aad8734b7d1e79853700"
    end
    on_intel do
      url "https://github.com/kyooni18/Yeet/releases/download/v0.1.5/yeet-0.1.5-x86_64-apple-darwin.tar.gz"
      sha256 "b7d45307a29ccbd34b254f31f4b6193cfd3194b9397e39281ac903f6d76302b7"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/kyooni18/Yeet/releases/download/v0.1.5/yeet-0.1.5-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "f88c94fcc4d3e4d206b2a0fa6a6d4a33712743f93c6e3e979bfbfe8ca46dc2ae"
    end
    on_intel do
      url "https://github.com/kyooni18/Yeet/releases/download/v0.1.5/yeet-0.1.5-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "6cff5e140a778affb00211233d2d097f375aba6595ce360c0d4ed7456ae4bde8"
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
