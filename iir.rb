class Iir < Formula
  desc "IIR realtime filter library written in C++"
  url "https://github.com/berndporr/iir1/archive/1.9.3.zip"
  homepage "https://github.com/berndporr/iir1"
  depends_on "cmake" => :build
#  sha256 "9e202e99764f8b25d43442c429519725c487a5358c262a2b81bbc17a9d79eac0"
  def install
    system "cmake", ".", *std_cmake_args
    system "make"
    system "make", "install"
  end

  test do
    system "ctest"
  end
end
