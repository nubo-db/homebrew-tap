# Homebrew formula for Dynoxide
# Place this in a tap repo (e.g., nubo-db/homebrew-tap) as Formula/dynoxide.rb
# Install with: brew install nubo-db/tap/dynoxide
#
# NOTE: sha256 values are "PLACEHOLDER" in this template. They are replaced
# automatically by the release CI workflow (.github/workflows/homebrew.yml)
# when a new version is published. Do not fill them in manually.

class Dynoxide < Formula
  desc "Fast, lightweight drop-in replacement for DynamoDB Local, backed by SQLite"
  homepage "https://github.com/nubo-db/dynoxide"
  version "0.9.6"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      sha256 "31ac7bddc808218b7f07c806372ae1030305895c9dea6f08bba5d55a58369a82"
    end

    on_intel do
      sha256 "ffd95cfb8af3812616cba1566b0fc92db2e27f1573216b6a1bdfe69eb7de65e9"
    end
  end

  on_linux do
    on_arm do
      sha256 "4aec8fa5eb6bfda48654bdf2dd34106fc6aeccbc21ef1b42bafa6eb9b1c7cd4f"
    end

    on_intel do
      sha256 "e59b55366d08e69ac97137a188c935114a9e5e934a73e8c963eebd9f0ed914e3"
    end
  end

  def install
    bin.install "dynoxide"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/dynoxide --version")
  end
end
