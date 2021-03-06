require 'formula'

class Libmatroska < Formula
  url 'http://dl.matroska.org/downloads/libmatroska/libmatroska-1.3.0.tar.bz2'
  mirror 'http://www.bunkus.org/videotools/mkvtoolnix/sources/libmatroska-1.3.0.tar.bz2'
  homepage 'http://www.matroska.org/'
  md5 'f4a8c411f09d39c754eb726efd616043'

  depends_on 'libebml'

  def install
    chdir 'make/linux' do
      system "make install prefix=#{prefix} CXX=#{ENV.cxx}"
    end
  end
end
