require 'package'

class Libx11 < Package
  version '1.6.2'
  source_url 'http://xorg.freedesktop.org/releases/individual/lib/libX11-1.6.2.tar.bz2'
  source_sha1 '0dd74854e6f6bb8a322e88ba3e89f87c3dcf9e08'

  depends_on 'buildessential'
  depends_on 'pkgconfig'
  depends_on 'perl'
  depends_on 'xproto'
  depends_on 'xextproto'
  depends_on 'xtrans'
  depends_on 'inputproto'
  depends_on 'kbproto'
  depends_on 'libxcb'
  
  def self.build
    system "./configure"
    system "make"
  end
  
  def self.install
    system "make DESTDIR=#{CREW_DEST_DIR} install"
  end
end
