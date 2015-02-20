require 'package'

class Xcb_util_wm < Package
  version '0.4.1'
  source_url 'http://xorg.freedesktop.org/releases/individual/xcb/xcb-util-wm-0.4.1.tar.bz2'
  source_sha1 '7006c52b961c123355320bfc30477cdf90c8bbb7'

  depends_on 'buildessential'
  depends_on 'pkgconfig'
  depends_on 'xproto'
  depends_on 'libxcb'
  depends_on 'xcb_util'
  
  def self.build
    system "./configure"
    system "make"
  end
  
  def self.install
    system "make DESTDIR=#{CREW_DEST_DIR} install"
  end
end
