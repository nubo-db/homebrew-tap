class Dynoxide < Formula
  desc "Fast, lightweight drop-in replacement for DynamoDB Local, backed by SQLite"
  homepage "https://dynoxide.dev"
  version "1.6.0"
  license any_of: ["MIT", "Apache-2.0"]
  on_macos do
    on_arm do
      url "https://github.com/nubo-db/dynoxide/releases/download/v1.6.0/dynoxide-aarch64-apple-darwin.tar.gz"
      sha256 "fc51429a0b1301747ce7e104926e9b6be9169680b08c65780bf2ffc1514391d3"
    end
    on_intel do
      url "https://github.com/nubo-db/dynoxide/releases/download/v1.6.0/dynoxide-x86_64-apple-darwin.tar.gz"
      sha256 "1f426d60b84ee37204c9d9718a734bb02025563a50992252b5c39b3a48862bbe"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/nubo-db/dynoxide/releases/download/v1.6.0/dynoxide-aarch64-unknown-linux-musl.tar.gz"
      sha256 "a92faf1ed445218159df0600b07e9b9f581b3f6f80ef8b4617c4ab4f5e41e635"
    end
    on_intel do
      url "https://github.com/nubo-db/dynoxide/releases/download/v1.6.0/dynoxide-x86_64-unknown-linux-musl.tar.gz"
      sha256 "ee5a6368fce28b19edd7efd676e645a71d3bd8ea5c8c229321496a520f2c8487"
    end
  end
  def install
    bin.install "dynoxide"
  end
  test do
    assert_equal "dynoxide #{version}", shell_output("#{bin}/dynoxide --version").strip
  end
end
