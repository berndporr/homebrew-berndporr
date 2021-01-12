class Iir < Formula
  desc "IIR realtime filter library written in C++"
  url "https://github.com/berndporr/iir1/archive/1.7.9.zip"
  homepage "https://github.com/berndporr/iir1"
  sha256 "3e2b0a38214a71889d3231145892ca9317b2802de5b3f6281a374c61e57a1618"
  depends_on "cmake" => :build

  def install
    system "cmake", ".", *std_cmake_args
    system "make"
    system "make", "install"
  end

  test do
    system "ctest"
  end
end
