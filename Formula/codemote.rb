class Codemote < Formula
  desc "Control AI coding assistants from your iPhone"
  homepage "https://github.com/codemoteapp"
  version "1.3.9"
  license :cannot_represent

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/codemoteapp/codemote-/releases/download/v1.3.9/codemote-1.3.9-macos-arm64.tar.gz"
      sha256 "22a9d30ada71f0cac89276ba316ab053da61522d93fa787c281ed73afd64a7d1"

      def install
        bin.install "codemote-arm64" => "codemote"
      end
    else
      url "https://github.com/codemoteapp/codemote-/releases/download/v1.3.9/codemote-1.3.9-macos-x64.tar.gz"
      sha256 "9f04d7e13135a38bebf916ca10f279d365d2932b69f5d57da093b0d1567c62b5"

      def install
        bin.install "codemote-x64" => "codemote"
      end
    end
  end

  test do
    assert_match "1.3", shell_output("#{bin}/codemote --version 2>&1")
  end
end
