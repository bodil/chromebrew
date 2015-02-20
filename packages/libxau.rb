require 'package'

class Libxau < Package
  version '1.0.8'
  source_url 'http://xorg.freedesktop.org/releases/individual/lib/libXau-1.0.8.tar.bz2'
  source_sha1 'd9512d6869e022d4e9c9d33f6d6199eda4ad096b'

  depends_on 'buildessential'
  depends_on 'pkgconfig'
  depends_on 'xorg_macros'
  
  def self.build
    system "./configure"
    system "make"
  end
  
  def self.install
    system "make DESTDIR=#{CREW_DEST_DIR} install"
  end
end
