class Yeet < Formula
  desc "Native multiplatform agent CLI/TUI with a provider-neutral runtime and remote UI"
  homepage "https://github.com/kyooni18/Yeet"
  version "0.1.11"
  license "Apache-2.0"

  depends_on "node"

  on_macos do
    on_arm do
      url "https://github.com/kyooni18/Yeet/releases/download/v0.1.11/yeet-0.1.11-aarch64-apple-darwin.tar.gz"
      sha256 "9fab8ac5b223826c689f0e964989cb7da89511e6bcd834ba6cbadb5c3e5c4f3a"
    end
    on_intel do
      url "https://github.com/kyooni18/Yeet/releases/download/v0.1.11/yeet-0.1.11-x86_64-apple-darwin.tar.gz"
      sha256 "11d01ab571ccaf12c8015c6f955845f7721e8e4715de2cf301510bfd2967bf9e"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/kyooni18/Yeet/releases/download/v0.1.11/yeet-0.1.11-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "ff11aa72fb306800ead2d75dd40b6bd82fe5ca71e9df402b0ad39db89db75c9a"
    end
    on_intel do
      url "https://github.com/kyooni18/Yeet/releases/download/v0.1.11/yeet-0.1.11-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "d15f8003641555e2e44dc22212b0b72a8859dd4f4381d95396a487e0fba98feb"
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
