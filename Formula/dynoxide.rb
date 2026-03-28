class Dynoxide < Formula
  desc "Fast, lightweight drop-in replacement for DynamoDB Local, backed by SQLite"
  homepage "https://github.com/nubo-db/dynoxide"
  version "0.9.6"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/nubo-db/dynoxide/releases/download/v0.9.6/dynoxide-aarch64-apple-darwin.tar.gz"
      sha256 "bdacb056fa8bee366dd0a12f8c885bb3bb36c91c259eaeb46de1846e6fa2f129"
    elsif Hardware::CPU.intel?
      url "https://github.com/nubo-db/dynoxide/releases/download/v0.9.6/dynoxide-x86_64-apple-darwin.tar.gz"
      sha256 "89a6520f65f4e32d4bcd5ebafa879bf37ca56a31c66e2018f5853a427423a1b8"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/nubo-db/dynoxide/releases/download/v0.9.6/dynoxide-aarch64-unknown-linux-musl.tar.gz"
      sha256 "728d4d239d14ec2806b6fff5d4119c282733fd27017074297e2c7be9d2053471"
    elsif Hardware::CPU.intel?
      url "https://github.com/nubo-db/dynoxide/releases/download/v0.9.6/dynoxide-x86_64-unknown-linux-musl.tar.gz"
      sha256 "4609d35c2cbb43095fd4fe98e1d713c69af3639b62c9ef680d8a6ef9020e16bd"
    end
  end

  def install
    bin.install "dynoxide"
  end

  test do
    assert_match "dynoxide", shell_output("#{bin}/dynoxide --version")
  end
end

