class Yeet < Formula
  desc "Native multiplatform agent CLI/TUI with a provider-neutral runtime and remote UI"
  homepage "https://github.com/kyooni18/Yeet"
  version "0.1.9"
  license "Apache-2.0"

  depends_on "node"

  on_macos do
    on_arm do
      url "https://github.com/kyooni18/Yeet/releases/download/v0.1.9/yeet-0.1.9-aarch64-apple-darwin.tar.gz"
      sha256 "5c389f565ebbb6ee41dbc1598afc5177ff954b3c9798cb9925db2fa302bb40d2"
    end
    on_intel do
      url "https://github.com/kyooni18/Yeet/releases/download/v0.1.9/yeet-0.1.9-x86_64-apple-darwin.tar.gz"
      sha256 "da39dbff0bace45227efc07e28176c3fd96d07c7c878725b941b478eaef3806a"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/kyooni18/Yeet/releases/download/v0.1.9/yeet-0.1.9-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "da8fe3bfa9d1e6835f1c1807c8fa566d8b4d834706bd101bbdb49481e9f2c29b"
    end
    on_intel do
      url "https://github.com/kyooni18/Yeet/releases/download/v0.1.9/yeet-0.1.9-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "fd1356d5378bf47640341140865091b6e201e279387bd85573a5cbb8ac230e35"
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
