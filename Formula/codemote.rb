class Codemote < Formula
  desc "Control AI coding assistants from your iPhone"
  homepage "https://github.com/codemoteapp"
  version "1.3.7"
  license :cannot_represent

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/codemoteapp/codemote-/releases/download/v1.3.7/codemote-1.3.7-macos-arm64.tar.gz"
      sha256 "d1b3e7b936f7ea16a930c4e53da58ab81349678007e8996359444cfc95313fcf"

      def install
        bin.install "codemote-arm64" => "codemote"
      end
    else
      url "https://github.com/codemoteapp/codemote-/releases/download/v1.3.7/codemote-1.3.7-macos-x64.tar.gz"
      sha256 "6d0df82d7a33bc632a5a9d01ba1e7ead03bb8cbe02952e2c53216e89abc97fdd"

      def install
        bin.install "codemote-x64" => "codemote"
      end
    end
  end

  test do
    assert_match "codemote", shell_output("#{bin}/codemote --version 2>&1", 1)
  end
end
