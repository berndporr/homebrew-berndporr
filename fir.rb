class Fir < Formula
  desc "FIR filter implementation with LMS in C++"
  homepage "https://github.com/berndporr/fir1"
  url "https://github.com/berndporr/fir1/archive/1.7.1.tar.gz"
  sha256 "310d18dc37507da7f7675a55aab7a85386d9ccc66b5cf137e1eb71d6ad7ec7a7"

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
