class Codemote < Formula
  desc "Control AI coding assistants from your iPhone"
  homepage "https://github.com/codemoteapp"
  version "1.4.0"
  license :cannot_represent

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/codemoteapp/codemote-/releases/download/v1.4.0/codemote-1.4.0-macos-arm64.tar.gz"
      sha256 "3518fe580d4a3899848052ce919cc3ba8563fe67d1c620e17daf2a48612873d7"

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
