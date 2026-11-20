class Dynoxide < Formula
  desc "DynamoDB emulator, verified against AWS, backed by SQLite"
  homepage "https://dynoxide.dev"
  version "1.8.0"
  license any_of: ["MIT", "Apache-2.0"]
  on_macos do
    on_arm do
      url "https://github.com/nubo-db/dynoxide/releases/download/v1.8.0/dynoxide-aarch64-apple-darwin.tar.gz"
      sha256 "980b771f411f380adb4a547d656eee17a4db4ba4d7645aba375b8d257c80cc46"
    end
    on_intel do
      url "https://github.com/nubo-db/dynoxide/releases/download/v1.8.0/dynoxide-x86_64-apple-darwin.tar.gz"
      sha256 "059a42262e85d2c950c438798dc04c5c3fc4fcd77263d4fb8d25c1333bde0ce5"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/nubo-db/dynoxide/releases/download/v1.8.0/dynoxide-aarch64-unknown-linux-musl.tar.gz"
      sha256 "49420398586835fdd5ed66f42c7c860eeb6c587814589007a9a0331053190557"
    end
    on_intel do
      url "https://github.com/nubo-db/dynoxide/releases/download/v1.8.0/dynoxide-x86_64-unknown-linux-musl.tar.gz"
      sha256 "4312745f05ecd5ab1dd878fecf1f9cd75212bb5c2f916b3420ed464e93f6b16a"
    end
  end
  def install
    bin.install "dynoxide"
  end
  test do
    assert_equal "dynoxide #{version}", shell_output("#{bin}/dynoxide --version").strip
  end
end
