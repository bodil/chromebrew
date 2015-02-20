require 'package'

class Xcb_util_image < Package
  version '0.4.0'
  source_url 'http://xorg.freedesktop.org/releases/individual/xcb/xcb-util-image-0.4.0.tar.bz2'
  source_sha1 'c9c9361781911a47b28f74fc6ebe0abd1273fae4'

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
