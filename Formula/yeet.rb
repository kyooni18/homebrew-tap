class Yeet < Formula
  desc "Native multiplatform agent CLI/TUI with a provider-neutral runtime and remote UI"
  homepage "https://github.com/kyooni18/Yeet"
  version "0.1.0"
  license "Apache-2.0"

  depends_on "node"

  on_macos do
    on_arm do
      url "https://github.com/kyooni18/Yeet/releases/download/v0.1.0/yeet-0.1.0-aarch64-apple-darwin.tar.gz"
      sha256 "c1f97eb6b4692cebcf0d7179beac87e9131ef788de32f4b2d49a3e8e58620a30"
    end
    on_intel do
      url "https://github.com/kyooni18/Yeet/releases/download/v0.1.0/yeet-0.1.0-x86_64-apple-darwin.tar.gz"
      sha256 "33322e28abfbdf0262b6a13f98f8ef36c1176c5e983e9cfc169ce5e5a707ea00"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/kyooni18/Yeet/releases/download/v0.1.0/yeet-0.1.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "c517e7aacdfd20a276e2e0f110fd682c73be7ec4d6b3510d68fe24a2f5d20e2b"
    end
    on_intel do
      url "https://github.com/kyooni18/Yeet/releases/download/v0.1.0/yeet-0.1.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "723802adc60144fb75b4b21aaa5bba7f3c31b382d0f1c394cec6ac5fc76e44f6"
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
