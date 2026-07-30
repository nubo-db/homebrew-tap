class Dynoxide < Formula
  desc "Fast, lightweight drop-in replacement for DynamoDB Local, backed by SQLite"
  homepage "https://dynoxide.dev"
  version "0.13.0"
  license any_of: ["MIT", "Apache-2.0"]
  on_macos do
    on_arm do
      url "https://github.com/nubo-db/dynoxide/releases/download/v0.13.0/dynoxide-aarch64-apple-darwin.tar.gz"
      sha256 "08a6166447587b3347430e5dafe605a08b8988dc96044babac2903a2f9bbd1b0"
    end
    on_intel do
      url "https://github.com/nubo-db/dynoxide/releases/download/v0.13.0/dynoxide-x86_64-apple-darwin.tar.gz"
      sha256 "4e92f2a49563bb5d2b14b609705548b00dbc2354311217e1d46a2ed6df234a54"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/nubo-db/dynoxide/releases/download/v0.13.0/dynoxide-aarch64-unknown-linux-musl.tar.gz"
      sha256 "d04ad4765a1e72e7892a32c6ae4daaba400f240c04c7072e0fdcd2c88574d890"
    end
    on_intel do
      url "https://github.com/nubo-db/dynoxide/releases/download/v0.13.0/dynoxide-x86_64-unknown-linux-musl.tar.gz"
      sha256 "0fba11ccb618ddd8bbec4e5a7c4a688e756514922122fe930b8f00484d79cdf3"
    end
  end
  def install
    bin.install "dynoxide"
  end
  test do
    assert_match version.to_s, shell_output("#{bin}/dynoxide --version")
  end
end
