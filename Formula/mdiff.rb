class Mdiff < Formula
  desc "TUI git diff viewer with worktree management"
  homepage "https://github.com/mutinyhq/mdiff"
  license "MIT"
  version "0.1.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/mutinyhq/mdiff/releases/download/v#{version}/mdiff-aarch64-apple-darwin.tar.gz"
      sha256 "b6bc360b4847e53a6242f505d35fd0e95a23ffb77ecbb289060d29f90f928623"
    else
      url "https://github.com/mutinyhq/mdiff/releases/download/v#{version}/mdiff-x86_64-apple-darwin.tar.gz"
      sha256 "22be2326e435613aa3ea7367792f728b9c3a4411290244ed1dd4e6fd5a10e2cb"
    end
  end

  def install
    bin.install "mdiff"
  end

  test do
    assert_match "mdiff", shell_output("#{bin}/mdiff --help")
  end
end
