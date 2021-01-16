class Iir < Formula
  desc "IIR realtime filter library written in C++"
  url "https://github.com/berndporr/iir1/archive/1.8.0.zip"
  homepage "https://github.com/berndporr/iir1"
  depends_on "cmake" => :build
  sha256 "6d150de04cef4dcd9914819a7947c52e54b33de0bd5777adad4067bcadbf4430"

  def install
    system "cmake", ".", *std_cmake_args
    system "make"
    system "make", "install"
  end

  test do
    system "ctest"
  end
end
