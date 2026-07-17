class Dynoxide < Formula
  desc "Fast, lightweight drop-in replacement for DynamoDB Local, backed by SQLite"
  homepage "https://dynoxide.dev"
  version "0.11.4"
  license any_of: ["MIT", "Apache-2.0"]
  on_macos do
    on_arm do
      url "https://github.com/nubo-db/dynoxide/releases/download/v0.11.4/dynoxide-aarch64-apple-darwin.tar.gz"
      sha256 "eeb1c1ea165061b1cc4c2dc3704814dace8aba6e884eb20d15b611dfbf4aeff0"
    end
    on_intel do
      url "https://github.com/nubo-db/dynoxide/releases/download/v0.11.4/dynoxide-x86_64-apple-darwin.tar.gz"
      sha256 "afc4739289c4fc26a4e66311a2a05e07573810fe3eb979aaa0ea8a709ba20a11"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/nubo-db/dynoxide/releases/download/v0.11.4/dynoxide-aarch64-unknown-linux-musl.tar.gz"
      sha256 "b856865832c2d1ed0c07e96a11eab6002b07aaff71a19cefe507376ba13dc05f"
    end
    on_intel do
      url "https://github.com/nubo-db/dynoxide/releases/download/v0.11.4/dynoxide-x86_64-unknown-linux-musl.tar.gz"
      sha256 "b3981e0753b990d6cf425106d0357c2bd5a3b6cb8a53b187c80b605429a97dca"
    end
  end
  def install
    bin.install "dynoxide"
  end
  test do
    assert_match version.to_s, shell_output("#{bin}/dynoxide --version")
  end
end
