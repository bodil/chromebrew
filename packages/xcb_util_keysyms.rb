require 'package'

class Xcb_util_keysyms < Package
  version '0.4.0'
  source_url 'http://xorg.freedesktop.org/releases/individual/xcb/xcb-util-keysyms-0.4.0.tar.bz2'
  source_sha1 'ff02ee8ac22c53848af50c0a6a6b00feb002c1cb'

  depends_on 'buildessential'
  depends_on 'pkgconfig'
  depends_on 'xproto'
  
  def self.build
    system "./configure"
    system "make"
  end
  
  def self.install
    system "make DESTDIR=#{CREW_DEST_DIR} install"
  end
end
