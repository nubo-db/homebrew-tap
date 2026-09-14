class Dynoxide < Formula
  desc "Fast, lightweight drop-in replacement for DynamoDB Local, backed by SQLite"
  homepage "https://dynoxide.dev"
  version "1.2.0"
  license any_of: ["MIT", "Apache-2.0"]
  on_macos do
    on_arm do
      url "https://github.com/nubo-db/dynoxide/releases/download/v1.2.0/dynoxide-aarch64-apple-darwin.tar.gz"
      sha256 "3d6c4b589866a127754acedd58a50a5ee7eeaca7ce7c9670e1348ff271d17634"
    end
    on_intel do
      url "https://github.com/nubo-db/dynoxide/releases/download/v1.2.0/dynoxide-x86_64-apple-darwin.tar.gz"
      sha256 "f6fe4e7d84530d3fbafc6b2d8355de28def631efa3e10d102b37253f5da3ca7f"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/nubo-db/dynoxide/releases/download/v1.2.0/dynoxide-aarch64-unknown-linux-musl.tar.gz"
      sha256 "66c7ff2ff039076bdd29f4b05740fa7bfd1fd1469aa70d63572c56fa59b24da8"
    end
    on_intel do
      url "https://github.com/nubo-db/dynoxide/releases/download/v1.2.0/dynoxide-x86_64-unknown-linux-musl.tar.gz"
      sha256 "f14e2d6ae3acdc259dc11c66593e20d98841a9e8ec6726e4484b1696f04443a1"
    end
  end
  def install
    bin.install "dynoxide"
  end
  test do
    assert_equal "dynoxide #{version}", shell_output("#{bin}/dynoxide --version").strip
  end
end
