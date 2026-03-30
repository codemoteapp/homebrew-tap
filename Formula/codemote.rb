class Codemote < Formula
  desc "Control AI coding assistants from your iPhone"
  homepage "https://github.com/codemoteapp"
  version "1.4.2"
  license :cannot_represent

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/codemoteapp/codemote-/releases/download/v1.4.2/codemote-1.4.2-macos-arm64.tar.gz"
      sha256 "fc3a193eed7ccc92af30620e815002633298c8f6006e8e87cfde33d98e824d1c"

      def install
        bin.install "codemote-arm64" => "codemote"
      end
    else
      url "https://github.com/codemoteapp/codemote-/releases/download/v1.4.2/codemote-1.4.2-macos-x64.tar.gz"
      sha256 "16a6a862c06e23dea1e071b7888c430f846d6c29b344421b32c997fad0247829"

      def install
        bin.install "codemote-x64" => "codemote"
      end
    end
  end

  test do
    assert_match "1.", shell_output("#{bin}/codemote --version 2>&1")
  end
end
