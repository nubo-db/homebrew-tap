class Dynoxide < Formula
  desc "Fast, lightweight drop-in replacement for DynamoDB Local, backed by SQLite"
  homepage "https://dynoxide.dev"
  version "0.9.8"
  license any_of: ["MIT", "Apache-2.0"]
  on_macos do
    on_arm do
      url "https://github.com/nubo-db/dynoxide/releases/download/v0.9.8/dynoxide-aarch64-apple-darwin.tar.gz"
      sha256 "9f4ead7fd0dc0c7632be44d13728d239b968590e2f42628613692c32261ffae9"
    end
    on_intel do
      url "https://github.com/nubo-db/dynoxide/releases/download/v0.9.8/dynoxide-x86_64-apple-darwin.tar.gz"
      sha256 "a597f534046e9099df4fa468d434ba03ed0ccaa9e7b033eca78bc76909a8feed"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/nubo-db/dynoxide/releases/download/v0.9.8/dynoxide-aarch64-unknown-linux-musl.tar.gz"
      sha256 "2f2c2b6ac64660ca78f89c45f1150609a126854817c13513ff6a61d941a4c166"
    end
    on_intel do
      url "https://github.com/nubo-db/dynoxide/releases/download/v0.9.8/dynoxide-x86_64-unknown-linux-musl.tar.gz"
      sha256 "b987b556790606623dca92f7ffaa9e1844c843040ef151c5a4a0d1d98cf7f453"
    end
  end
  def install
    bin.install "dynoxide"
  end
  test do
    assert_match version.to_s, shell_output("#{bin}/dynoxide --version")
  end
end
