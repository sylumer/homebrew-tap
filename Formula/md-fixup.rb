class MdFixup < Formula
  desc "Markdown linter that normalizes formatting and wraps text"
  homepage "https://github.com/sylumer/md-fixup"
  url "https://github.com/sylumer/md-fixup/releases/download/v0.1.36-sylumer.1/md-fixup-aarch64-apple-darwin.tar.gz"
  sha256 "126ced26efaa0dce82319c457685dea3659beaeca785832603f2b96e5981824d"
  license "MIT"

  def install
    bin.install "md-fixup"
  end

  test do
    (testpath/"test.md").write("* Apple\n+ Banana\n")
    output = shell_output("#{bin}/md-fixup test.md")
    assert_match "-", output
  end
end