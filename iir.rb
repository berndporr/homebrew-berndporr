class Iir < Formula
  desc "IIR realtime filter library written in C++"
  url "https://github.com/berndporr/iir1/archive/1.9.4.zip"
  homepage "https://github.com/berndporr/iir1"
  depends_on "cmake" => :build
  sha256 "36255274267966f63690b7dd1a0a5c43ed2df4cb81561647c751e67909c3ed54"

  def install
    system "cmake", ".", *std_cmake_args
    system "make"
    system "make", "install"
  end

  test do
    system "ctest"
  end
end
