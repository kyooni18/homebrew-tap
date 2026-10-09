class Yeet < Formula
  desc "Native multiplatform agent CLI/TUI with a provider-neutral runtime and remote UI"
  homepage "https://github.com/kyooni18/Yeet"
  version "0.1.1"
  license "Apache-2.0"

  depends_on "node"

  on_macos do
    on_arm do
      url "https://github.com/kyooni18/Yeet/releases/download/v0.1.1/yeet-0.1.1-aarch64-apple-darwin.tar.gz"
      sha256 "af2dcbea78fa208500aefbf60375bb16ce8a9e1be0106d8831b7298fa0b49639"
    end
    on_intel do
      url "https://github.com/kyooni18/Yeet/releases/download/v0.1.1/yeet-0.1.1-x86_64-apple-darwin.tar.gz"
      sha256 "612d9dbc5a5b82148d6e96e98f4fcfba1904eccb09fdbe66cc03731885136d45"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/kyooni18/Yeet/releases/download/v0.1.1/yeet-0.1.1-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "bc077b8aaad66674ce67fd10faae5f51e5c8971dacac6f45cf873d811d4fe0c8"
    end
    on_intel do
      url "https://github.com/kyooni18/Yeet/releases/download/v0.1.1/yeet-0.1.1-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "c538573132c8c944e0aacfd3e956d9fbaf6e71455c0daba2f288ca48eb3fd218"
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
