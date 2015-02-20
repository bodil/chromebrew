require 'package'

class Xcb_util < Package
  version '0.4.0'
  source_url 'http://xorg.freedesktop.org/releases/individual/xcb/xcb-util-0.4.0.tar.bz2'
  source_sha1 '7f2e9b7efcc2c34eb1d6ae312c3d73b075832e46'

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
