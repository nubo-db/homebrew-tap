class Dynoxide < Formula
  desc "Fast, lightweight drop-in replacement for DynamoDB Local, backed by SQLite"
  homepage "https://dynoxide.dev"
  version "0.9.7"
  license any_of: ["MIT", "Apache-2.0"]
  on_macos do
    on_arm do
      url "https://github.com/nubo-db/dynoxide/releases/download/v0.9.7/dynoxide-aarch64-apple-darwin.tar.gz"
      sha256 "e6fe02e364b70faae5b1853e65bc6cfb67efa02d81a3d82dd2a1cab6d14c3e82"
    end
    on_intel do
      url "https://github.com/nubo-db/dynoxide/releases/download/v0.9.7/dynoxide-x86_64-apple-darwin.tar.gz"
      sha256 "5e5d79d17405e59a37d6f48ff02b969e39d601e28f0d6663fe9417fc96a1ee39"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/nubo-db/dynoxide/releases/download/v0.9.7/dynoxide-aarch64-unknown-linux-musl.tar.gz"
      sha256 "75ef3d5c02c3bb65a4f745beed6df8337a378f3677bf506965456d58901b0ee4"
    end
    on_intel do
      url "https://github.com/nubo-db/dynoxide/releases/download/v0.9.7/dynoxide-x86_64-unknown-linux-musl.tar.gz"
      sha256 "ed58e67b605168d59ac4bdbf322f729fb92992af3c8c2a750301b4299e2e560b"
    end
  end
  def install
    bin.install "dynoxide"
  end
  test do
    assert_match version.to_s, shell_output("#{bin}/dynoxide --version")
  end
end
