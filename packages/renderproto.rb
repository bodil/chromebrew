require 'package'

class Renderproto < Package
  version '0.11.1'
  source_url 'http://xorg.freedesktop.org/releases/individual/proto/renderproto-0.11.1.tar.bz2'
  source_sha1 '7ae9868a358859fe539482b02414aa15c2d8b1e4'

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
