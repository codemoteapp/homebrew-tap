class Codemote < Formula
  desc "Control AI coding assistants from your iPhone"
  homepage "https://github.com/codemoteapp"
  version "1.4.1"
  license :cannot_represent

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/codemoteapp/codemote-/releases/download/v1.4.1/codemote-1.4.1-macos-arm64.tar.gz"
      sha256 "8d7f5be37fe609bf9abf8edec7c754f9a11177dd573da00c5d4be2f7d1a95f2c"

      def install
        bin.install "codemote-arm64" => "codemote"
      end
    else
      url "https://github.com/codemoteapp/codemote-/releases/download/v1.4.0/codemote-1.4.0-macos-x64.tar.gz"
      sha256 "9725c5ee4df148064a606c54202eb340b50f1aa5c14cb81c68a9b1afe10b57b3"

      def install
        bin.install "codemote-x64" => "codemote"
      end
    end
  end

  test do
    assert_match "1.", shell_output("#{bin}/codemote --version 2>&1")
  end
end
