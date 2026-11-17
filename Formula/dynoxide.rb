class Dynoxide < Formula
  desc "DynamoDB emulator, verified against AWS, backed by SQLite"
  homepage "https://dynoxide.dev"
  version "1.7.0"
  license any_of: ["MIT", "Apache-2.0"]
  on_macos do
    on_arm do
      url "https://github.com/nubo-db/dynoxide/releases/download/v1.7.0/dynoxide-aarch64-apple-darwin.tar.gz"
      sha256 "dff58da0770f8820b89df8ea49c192449c5b326d7e95acf95393d74db4339c71"
    end
    on_intel do
      url "https://github.com/nubo-db/dynoxide/releases/download/v1.7.0/dynoxide-x86_64-apple-darwin.tar.gz"
      sha256 "4dbb27980d1a022b40f01aee3e50cab4b5decfee81cd9e7ea411a72fe0736f94"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/nubo-db/dynoxide/releases/download/v1.7.0/dynoxide-aarch64-unknown-linux-musl.tar.gz"
      sha256 "9d648c011289f5b76c3707280490e7cee21435bb24894d8bbf18227722d825a9"
    end
    on_intel do
      url "https://github.com/nubo-db/dynoxide/releases/download/v1.7.0/dynoxide-x86_64-unknown-linux-musl.tar.gz"
      sha256 "575f6eb7fd06754113171a22b549c9d54de65e7a730985c51060350792172e13"
    end
  end
  def install
    bin.install "dynoxide"
  end
  test do
    assert_equal "dynoxide #{version}", shell_output("#{bin}/dynoxide --version").strip
  end
end
