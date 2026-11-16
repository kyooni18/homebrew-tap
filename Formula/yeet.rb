class Yeet < Formula
  desc "Native multiplatform agent CLI/TUI with a provider-neutral runtime and remote UI"
  homepage "https://github.com/kyooni18/Yeet"
  version "0.1.12"
  license "Apache-2.0"

  depends_on "node"

  on_macos do
    on_arm do
      url "https://github.com/kyooni18/Yeet/releases/download/v0.1.12/yeet-0.1.12-aarch64-apple-darwin.tar.gz"
      sha256 "b415cb02a59e638077265f594f53d5dea8323c958e5e396adafb1e2fbabc68b6"
    end
    on_intel do
      url "https://github.com/kyooni18/Yeet/releases/download/v0.1.12/yeet-0.1.12-x86_64-apple-darwin.tar.gz"
      sha256 "34eed074a3f56f9389f552eea514876bf76e78e74cfce4205ef2ee76e1ddf629"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/kyooni18/Yeet/releases/download/v0.1.12/yeet-0.1.12-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "58e5f62559b1fe36d0029c0fa4573e16b44233cb5e55f232b88ee546ccc08cbf"
    end
    on_intel do
      url "https://github.com/kyooni18/Yeet/releases/download/v0.1.12/yeet-0.1.12-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "e35dd996c226ada6818fa2928b82afcdb20dd36dad568ab099e312272bd82257"
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
