class Dynoxide < Formula
  desc "Fast, lightweight drop-in replacement for DynamoDB Local, backed by SQLite"
  homepage "https://dynoxide.dev"
  version "0.11.2"
  license any_of: ["MIT", "Apache-2.0"]
  on_macos do
    on_arm do
      url "https://github.com/nubo-db/dynoxide/releases/download/v0.11.2/dynoxide-aarch64-apple-darwin.tar.gz"
      sha256 "07cea9063c3e4304d6ffb6af15f09fbeaee65e86f56a750ebd5afd660af4de05"
    end
    on_intel do
      url "https://github.com/nubo-db/dynoxide/releases/download/v0.11.2/dynoxide-x86_64-apple-darwin.tar.gz"
      sha256 "7a93e0d44f916367730c6ebc1470d254e06ce75e5ad153467cc790ae4cecac57"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/nubo-db/dynoxide/releases/download/v0.11.2/dynoxide-aarch64-unknown-linux-musl.tar.gz"
      sha256 "505b255314a9e3c947dded85c81be65e44ce394adf6dcf55b7e6241282f12b51"
    end
    on_intel do
      url "https://github.com/nubo-db/dynoxide/releases/download/v0.11.2/dynoxide-x86_64-unknown-linux-musl.tar.gz"
      sha256 "615a5d13dd2741b11405841bbc1127503352cb6e184162d13fd58fe11416e41f"
    end
  end
  def install
    bin.install "dynoxide"
  end
  test do
    assert_match version.to_s, shell_output("#{bin}/dynoxide --version")
  end
end
