require 'package'

class Inputproto < Package
  version '2.3'
  source_url 'http://xorg.freedesktop.org/releases/individual/proto/inputproto-2.3.tar.bz2'
  source_sha1 '4eacc1883593d3f0040e410be3afc8483c7d2409'

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
