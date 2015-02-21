require 'package'

class Libxft < Package
  version '2.3.2'
  source_url 'http://xorg.freedesktop.org/releases/individual/lib/libXft-2.3.2.tar.bz2'
  source_sha1 'e025d790a7b6c4d283a78d8df06615cb10278e2d'

  depends_on 'buildessential'
  depends_on 'pkgconfig'
  depends_on 'xorg_macros'
  depends_on 'libxrender'
  depends_on 'freetype'
  depends_on 'fontconfig'
  
  def self.build
    system "./configure"
    system "make"
  end
  
  def self.install
    system "make DESTDIR=#{CREW_DEST_DIR} install"
  end
end
