class Yeet < Formula
  desc "Native multiplatform agent CLI/TUI with a provider-neutral runtime and remote UI"
  homepage "https://github.com/kyooni18/Yeet"
  version "0.1.10"
  license "Apache-2.0"

  depends_on "node"

  on_macos do
    on_arm do
      url "https://github.com/kyooni18/Yeet/releases/download/v0.1.10/yeet-0.1.10-aarch64-apple-darwin.tar.gz"
      sha256 "593bb8b212fa25518d6da642ca01f058ee86fd594388034aaa880fa052a64e70"
    end
    on_intel do
      url "https://github.com/kyooni18/Yeet/releases/download/v0.1.10/yeet-0.1.10-x86_64-apple-darwin.tar.gz"
      sha256 "78e8143f4ac03fdc62a2e4e5dc1b58d9501f9508c98913a9b2698983fe8922d7"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/kyooni18/Yeet/releases/download/v0.1.10/yeet-0.1.10-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "0c2a21b57545c2d3b5be49d773d3167830c479f7a810d9df6285d6fdca378d3b"
    end
    on_intel do
      url "https://github.com/kyooni18/Yeet/releases/download/v0.1.10/yeet-0.1.10-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "81a0a282dc76eb1421cb23dacd700f6a20223ba6b1ad48323e13d13181b83995"
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
