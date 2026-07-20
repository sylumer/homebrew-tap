class Seg < Formula
  desc "Command-line generator for simple sound effects based on a numeric seed"
  homepage "https://github.com/sylumer/seg"
  url "https://github.com/sylumer/seg/archive/refs/tags/v1.0.0.tar.gz"
  sha256 "37127fde8cfb1d35a23ce0fc948bb23d347670fa696d92deea9168cefbb2e8c3"
  license "Coffeeware"

  depends_on "ffmpeg"

  def install
    system "make", "-C", "src"
    bin.install "src/seg"
    man1.install "man/seg.1"
  end

  test do
    system bin/"seg", "12345", "-o", testpath/"test.mp3"
    assert_path_exists testpath/"test.mp3"
  end
end
