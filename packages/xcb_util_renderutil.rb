require 'package'

class Xcb_util_renderutil < Package
  version '0.3.9'
  source_url 'http://xorg.freedesktop.org/releases/individual/xcb/xcb-util-renderutil-0.3.9.tar.bz2'
  source_sha1 'cb533b1d039f833f070e7d6398c221a31d30d5e2'

  depends_on 'buildessential'
  depends_on 'pkgconfig'
  depends_on 'xproto'
  depends_on 'libxcb'
  
  def self.build
    system "./configure"
    system "make"
  end
  
  def self.install
    system "make DESTDIR=#{CREW_DEST_DIR} install"
  end
end
