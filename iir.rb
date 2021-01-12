class Iir < Formula
  desc "IIR realtime filter library written in C++"
  url "https://github.com/berndporr/iir1/archive/1.7.9.zip"
  homepage "https://github.com/berndporr/iir1"
#  sha256 "e9ebeea7e6e109f94654d3117dbb1c6c758ed9406be537ecef7f888ea1095c79"

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
