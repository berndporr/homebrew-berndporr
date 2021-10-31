class Fir < Formula
  desc "FIR filter implementation with LMS in C++"
  homepage "https://github.com/berndporr/fir1"
  url "https://github.com/berndporr/fir1/archive/1.7.1.tar.gz"
#  sha256 "f0d3cbbe4128fa38cf69bcfa174f059c8e5e3666eea2cde7efe76af189cda335"

  depends_on "cmake" => :build

  def install
    system "cmake", ".", *std_cmake_args
    system "make"
    system "make", "install"
  end

  test do
    system "echo 1"
  end
end
