class Dynoxide < Formula
  desc "Fast, lightweight drop-in replacement for DynamoDB Local, backed by SQLite"
  homepage "https://dynoxide.dev"
  version "1.0.0"
  license any_of: ["MIT", "Apache-2.0"]
  on_macos do
    on_arm do
      url "https://github.com/nubo-db/dynoxide/releases/download/v1.0.0/dynoxide-aarch64-apple-darwin.tar.gz"
      sha256 "803cbc2c1610415a8b51d38d5707dd6ee103e26574b42c1f28ca2e652e8c845d"
    end
    on_intel do
      url "https://github.com/nubo-db/dynoxide/releases/download/v1.0.0/dynoxide-x86_64-apple-darwin.tar.gz"
      sha256 "cd77f09921c80d7492be5f73891671762c0e3b9a4ac1028de826d93b8ff3b3b5"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/nubo-db/dynoxide/releases/download/v1.0.0/dynoxide-aarch64-unknown-linux-musl.tar.gz"
      sha256 "1228c555096c59def737b18ed2e0e6de4e62bd3863c9128429fed9a65137c18d"
    end
    on_intel do
      url "https://github.com/nubo-db/dynoxide/releases/download/v1.0.0/dynoxide-x86_64-unknown-linux-musl.tar.gz"
      sha256 "c46b8f563dbf3e8e20d7b6f274f238f6c45636f2bac8908c8336aa5bc4cfadda"
    end
  end
  def install
    bin.install "dynoxide"
  end
  test do
    assert_match version.to_s, shell_output("#{bin}/dynoxide --version")
  end
end
