class Yeet < Formula
  desc "Native multiplatform agent CLI/TUI with a provider-neutral runtime and remote UI"
  homepage "https://github.com/kyooni18/Yeet"
  version "0.1.8"
  license "Apache-2.0"

  depends_on "node"

  on_macos do
    on_arm do
      url "https://github.com/kyooni18/Yeet/releases/download/v0.1.8/yeet-0.1.8-aarch64-apple-darwin.tar.gz"
      sha256 "8e4ab0b91eeb4ab11580377d9914ba8e31cf7f6893ac99ba2d86c5f41302242b"
    end
    on_intel do
      url "https://github.com/kyooni18/Yeet/releases/download/v0.1.8/yeet-0.1.8-x86_64-apple-darwin.tar.gz"
      sha256 "b7dd35249409db7a4551a458f3dae56492bc75ab01cc12c264179215574379b8"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/kyooni18/Yeet/releases/download/v0.1.8/yeet-0.1.8-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "14658e0afbe840204478d3d70c84f11bb786c966dcbe59c130cbd750f2fe7900"
    end
    on_intel do
      url "https://github.com/kyooni18/Yeet/releases/download/v0.1.8/yeet-0.1.8-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "119e6bbd584183ca04fa082096e916e989bc01dd58821704b2c3838a74c0b58b"
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
