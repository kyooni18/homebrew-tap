class Yeet < Formula
  desc "Native multiplatform agent CLI/TUI with a provider-neutral runtime and remote UI"
  homepage "https://github.com/kyooni18/Yeet"
  version "0.1.7"
  license "Apache-2.0"

  depends_on "node"

  on_macos do
    on_arm do
      url "https://github.com/kyooni18/Yeet/releases/download/v0.1.7/yeet-0.1.7-aarch64-apple-darwin.tar.gz"
      sha256 "49a5a017f68e913b90020b00df7c784875f4a9a455f52e87ea39a685ca705390"
    end
    on_intel do
      url "https://github.com/kyooni18/Yeet/releases/download/v0.1.7/yeet-0.1.7-x86_64-apple-darwin.tar.gz"
      sha256 "030d132f0b355618c169559b06f7fd42c5312e42dca6c055293f2275f206b15d"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/kyooni18/Yeet/releases/download/v0.1.7/yeet-0.1.7-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "f79af9a3760900bb44ccd6997ed1db2ec6a36986d4ef6592136a59fe5f924254"
    end
    on_intel do
      url "https://github.com/kyooni18/Yeet/releases/download/v0.1.7/yeet-0.1.7-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "dbc10141e3288ee2fb35626c43988837235beb2d938e09cc5c65ff40e37fbec8"
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
