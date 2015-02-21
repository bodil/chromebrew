require 'package'

class Libsm < Package
  version '1.2.2'
  source_url 'http://xorg.freedesktop.org/releases/individual/lib/libSM-1.2.2.tar.bz2'
  source_sha1 'e6d5dab6828dfd296e564518d2ed0a349a25a714'

  depends_on 'buildessential'
  depends_on 'pkgconfig'
  depends_on 'xorg_macros'
  depends_on 'xproto'
  depends_on 'xtrans'
  
  def self.build
    system "LDFLAGS=-L/usr/local/lib ./configure"
    system "make"
  end
  
  def self.install
    system "make DESTDIR=#{CREW_DEST_DIR} install"
  end
end
