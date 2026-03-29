class Codemote < Formula
  desc "Control AI coding assistants from your iPhone"
  homepage "https://github.com/codemoteapp"
  version "1.3.8"
  license :cannot_represent

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/codemoteapp/codemote-/releases/download/v1.3.8/codemote-1.3.8-macos-arm64.tar.gz"
      sha256 "cca7f2efaaeab9887d4bd09dc843d502abd87263db7b87ffea516f46077090c8"

      def install
        bin.install "codemote-arm64" => "codemote"
      end
    else
      url "https://github.com/codemoteapp/codemote-/releases/download/v1.3.8/codemote-1.3.8-macos-x64.tar.gz"
      sha256 "3e5ff9c73a90ad69d23344ffa18aef4f266caf335af5b51e84b0ceffc1cd79c0"

      def install
        bin.install "codemote-x64" => "codemote"
      end
    end
  end

  test do
    assert_match "codemote", shell_output("#{bin}/codemote --version 2>&1", 1)
  end
end
