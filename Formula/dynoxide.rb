class Dynoxide < Formula
  desc "Fast, lightweight drop-in replacement for DynamoDB Local, backed by SQLite"
  homepage "https://dynoxide.dev"
  version "1.5.0"
  license any_of: ["MIT", "Apache-2.0"]
  on_macos do
    on_arm do
      url "https://github.com/nubo-db/dynoxide/releases/download/v1.5.0/dynoxide-aarch64-apple-darwin.tar.gz"
      sha256 "47a348bc3e0ebd01b5564c0c1431a186516318b8d728e3675da31fab4012a870"
    end
    on_intel do
      url "https://github.com/nubo-db/dynoxide/releases/download/v1.5.0/dynoxide-x86_64-apple-darwin.tar.gz"
      sha256 "7cca1761fb6fcf2e6f91b98b12e4b09be17706cac9d958b558c7cb9a0d1f8f45"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/nubo-db/dynoxide/releases/download/v1.5.0/dynoxide-aarch64-unknown-linux-musl.tar.gz"
      sha256 "46ac50195ef39568c172c40d17d3151aaa02222e10fc5b0cecfafc1b2e432b44"
    end
    on_intel do
      url "https://github.com/nubo-db/dynoxide/releases/download/v1.5.0/dynoxide-x86_64-unknown-linux-musl.tar.gz"
      sha256 "1ffe0501e32ae8965112be417a96b20a6feb18eb473a6b39c3abee58e192c14f"
    end
  end
  def install
    bin.install "dynoxide"
  end
  test do
    assert_equal "dynoxide #{version}", shell_output("#{bin}/dynoxide --version").strip
  end
end
