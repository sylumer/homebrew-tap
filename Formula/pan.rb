class Pan < Formula
  desc "A wrapper/manager for making Piper easier to use"
  homepage "https://github.com/sylumer/pan"
  url "https://github.com/sylumer/pan/archive/refs/tags/v1.0.0.tar.gz"
  sha256 "49ff1cba87170e430359a5840823d0a22608808ccfdbd0612cbebc4b4da56592"
  license "Coffeeware"

  def install
	bin.install "src/pan.sh" => "pan"
	man1.install "man/pan.1"
  end

  test do
	system "#{bin}/pan", "--version"
  end
end
