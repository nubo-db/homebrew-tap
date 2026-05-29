class Dynoxide < Formula
  desc "Fast, lightweight drop-in replacement for DynamoDB Local, backed by SQLite"
  homepage "https://dynoxide.dev"
  version "0.10.0"
  license any_of: ["MIT", "Apache-2.0"]
  on_macos do
    on_arm do
      url "https://github.com/nubo-db/dynoxide/releases/download/v0.10.0/dynoxide-aarch64-apple-darwin.tar.gz"
      sha256 "4b65471d0614435424fcfddf367fe469c74bc6edce1625c1966f41c5c84230af"
    end
    on_intel do
      url "https://github.com/nubo-db/dynoxide/releases/download/v0.10.0/dynoxide-x86_64-apple-darwin.tar.gz"
      sha256 "8fe3c204ccf6ad10d2c2edf85786b130a64c12534efe8e88e4df0e461f1fc5a2"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/nubo-db/dynoxide/releases/download/v0.10.0/dynoxide-aarch64-unknown-linux-musl.tar.gz"
      sha256 "3d4040c9b77c755cab9a16e2872a51425f8faf7baa7aa172e3f39432bd20fa84"
    end
    on_intel do
      url "https://github.com/nubo-db/dynoxide/releases/download/v0.10.0/dynoxide-x86_64-unknown-linux-musl.tar.gz"
      sha256 "607104faba39a4b314590f41b02e304c2aa36d9b69da599e89e8271add8fe2c6"
    end
  end
  def install
    bin.install "dynoxide"
  end
  test do
    assert_match version.to_s, shell_output("#{bin}/dynoxide --version")
  end
end
