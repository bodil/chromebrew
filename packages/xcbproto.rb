require 'package'

class Xcbproto < Package
  version '1.11'
  source_url 'http://xcb.freedesktop.org/dist/xcb-proto-1.11.tar.bz2'
  source_sha1 '608bd60663e223464d38acec0183ddb827776401'

  depends_on 'buildessential'
  depends_on 'pkgconfig'
  depends_on 'python'
  
  def self.build
    system "./configure"
    system "make"
  end
  
  def self.install
    system "make DESTDIR=#{CREW_DEST_DIR} install"
  end
end
