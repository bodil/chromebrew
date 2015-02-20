require 'package'

class Xproto < Package
  version '7.0.27'
  source_url 'http://xorg.freedesktop.org/releases/individual/proto/xproto-7.0.27.tar.bz2'
  source_sha1 'b34e7438623c8016cc8338549e5fcc29e2f64034'

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
