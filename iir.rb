class Iir < Formula
  desc "IIR realtime filter library written in C++"
  url "https://github.com/berndporr/iir1/archive/1.9.3.zip"
  homepage "https://github.com/berndporr/iir1"
  depends_on "cmake" => :build
  sha256 "0be85f6835efdad99b312b03acc9b7981b80e6118bd5e987a53c396915f36d83"

  def install
    system "cmake", ".", *std_cmake_args
    system "make"
    system "make", "install"
  end

  test do
    system "ctest"
  end
end
