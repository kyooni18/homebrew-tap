class Yeet < Formula
  desc "Native multiplatform agent CLI/TUI with a provider-neutral runtime and remote UI"
  homepage "https://github.com/kyooni18/Yeet"
  version "0.1.13"
  license "Apache-2.0"

  depends_on "node"

  on_macos do
    on_arm do
      url "https://github.com/kyooni18/Yeet/releases/download/v0.1.13/yeet-0.1.13-aarch64-apple-darwin.tar.gz"
      sha256 "68aa0ffc0bffbc0483b7330ceac61f301fae4f0a03ccebef918591d31ffb69e4"
    end
    on_intel do
      url "https://github.com/kyooni18/Yeet/releases/download/v0.1.13/yeet-0.1.13-x86_64-apple-darwin.tar.gz"
      sha256 "e9fce76bc7d84a883e5c217d3d797aa5d11e0aefb4e77a42062fe3ba7e2ac036"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/kyooni18/Yeet/releases/download/v0.1.13/yeet-0.1.13-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "3f70b285a180d72b3982c3c3693309a8d198e1dab0e752ec85b9877cb60bf43e"
    end
    on_intel do
      url "https://github.com/kyooni18/Yeet/releases/download/v0.1.13/yeet-0.1.13-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "8bf1affb37fa622d28332a7f91ecd08098b2dfff53cd66fcabc7568b539b0536"
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
