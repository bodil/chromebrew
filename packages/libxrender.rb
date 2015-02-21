require 'package'

class Libxrender < Package
  version '0.9.8'
  source_url 'http://xorg.freedesktop.org/releases/individual/lib/libXrender-0.9.8.tar.bz2'
  source_sha1 '0f5c843410029944bd06e19366db4932cf5944fa'

  depends_on 'buildessential'
  depends_on 'pkgconfig'
  depends_on 'xorg_macros'
  depends_on 'renderproto'
  
  def self.build
    system "./configure"
    system "make"
  end
  
  def self.install
    system "make DESTDIR=#{CREW_DEST_DIR} install"
  end
end
