require 'package'

class Libxi < Package
  version '1.7.4'
  source_url 'http://xorg.freedesktop.org/releases/individual/lib/libXi-1.7.4.tar.bz2'
  source_sha1 'd206af66ca9472784a6f05e719121e4d21a1adb1'

  depends_on 'buildessential'
  depends_on 'pkgconfig'
  depends_on 'xorg_macros'
  depends_on 'libxext'
  depends_on 'libxfixes'
  
  def self.build
    system "./configure"
    system "make"
  end
  
  def self.install
    system "make DESTDIR=#{CREW_DEST_DIR} install"
  end
end
