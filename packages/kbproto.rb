require 'package'

class Kbproto < Package
  version '1.0.6'
  source_url 'http://xorg.freedesktop.org/releases/individual/proto/kbproto-1.0.6.tar.bz2'
  source_sha1 'a2cc82357c22a1f4d6243017982c32703c95575c'

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
