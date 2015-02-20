require 'package'

class Xtrans < Package
  version '1.3.5'
  source_url 'http://xorg.freedesktop.org/releases/individual/lib/xtrans-1.3.5.tar.bz2'
  source_sha1 '2d3ae1839d841f568bc481c6116af7d2a9f9ba59'

  depends_on 'buildessential'
  depends_on 'pkgconfig'
  
  def self.build
    system "./configure"
    system "make"
  end
  
  def self.install
    system "make DESTDIR=#{CREW_DEST_DIR} install"
  end
end
