class Dynoxide < Formula
  desc "Fast, lightweight drop-in replacement for DynamoDB Local, backed by SQLite"
  homepage "https://dynoxide.dev"
  version "1.3.0"
  license any_of: ["MIT", "Apache-2.0"]
  on_macos do
    on_arm do
      url "https://github.com/nubo-db/dynoxide/releases/download/v1.3.0/dynoxide-aarch64-apple-darwin.tar.gz"
      sha256 "e8a5df56ef8bec534b82da5a06526ed76e7635efa6b2026d16e969d3daed07c6"
    end
    on_intel do
      url "https://github.com/nubo-db/dynoxide/releases/download/v1.3.0/dynoxide-x86_64-apple-darwin.tar.gz"
      sha256 "622c510cb7828fb181041349028f9908058a806b683e4d0eb18a197000b986b2"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/nubo-db/dynoxide/releases/download/v1.3.0/dynoxide-aarch64-unknown-linux-musl.tar.gz"
      sha256 "0e495d6eefc2f2ddf06c361359ad7b6d0c2141991a08a0cb419aee8bbea28bbc"
    end
    on_intel do
      url "https://github.com/nubo-db/dynoxide/releases/download/v1.3.0/dynoxide-x86_64-unknown-linux-musl.tar.gz"
      sha256 "57734e14fcab0ed6f8f5135776702cb419acee1ccd356d716d26acef7086a55e"
    end
  end
  def install
    bin.install "dynoxide"
  end
  test do
    assert_equal "dynoxide #{version}", shell_output("#{bin}/dynoxide --version").strip
  end
end
