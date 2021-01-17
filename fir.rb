class Fir < Formula
  desc "FIR filter implementation with LMS in C++"
  homepage "https://github.com/berndporr/fir1"
  url "https://github.com/berndporr/fir1/archive/1.5.0.tar.gz"

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
