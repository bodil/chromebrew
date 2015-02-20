require 'package'

class Xcb_util_cursor < Package
  version '0.1.1'
  source_url 'http://xorg.freedesktop.org/releases/individual/xcb/xcb-util-cursor-0.1.1.tar.bz2'
  source_sha1 '75ea5d4dc5f185151f171e525023cb76f3b72128'

  depends_on 'buildessential'
  depends_on 'pkgconfig'
  depends_on 'xproto'
  depends_on 'libxcb'
  depends_on 'xcb_util_renderutil'
  depends_on 'xcb_util_image'
  
  def self.build
    system "./configure"
    system "make"
  end
  
  def self.install
    system "make DESTDIR=#{CREW_DEST_DIR} install"
  end
end
