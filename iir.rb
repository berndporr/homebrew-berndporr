class Iir < Formula
  desc "IIR realtime filter library written in C++"
  url "https://github.com/berndporr/iir1/archive/1.9.0.zip"
  homepage "https://github.com/berndporr/iir1"
  depends_on "cmake" => :build
#  sha256 "e5f57fbb8fd8181febbedd9de88407e61a6f0f1b476866dd32dab0c728b817d4"

  def install
    system "cmake", ".", *std_cmake_args
    system "make"
    system "make", "install"
  end

  test do
    system "ctest"
  end
end
