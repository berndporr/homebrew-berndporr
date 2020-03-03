class Fir < Formula
  desc "FIR filter implementation with LMS in C++"
  homepage "https://github.com/berndporr/fir1"
  url "https://github.com/berndporr/fir1/archive/1.4.1.tar.gz"
  sha256 "c1915c4e38582ca7a004dd609f9a182ef3aff414da3116517f524a60c8785c6c"

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
