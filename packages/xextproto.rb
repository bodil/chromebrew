require 'package'

class Xextproto < Package
  version '7.3.0'
  source_url 'http://xorg.freedesktop.org/releases/individual/proto/xextproto-7.3.0.tar.bz2'
  source_sha1 'b8d736342dcb73b71584d99a1cb9806d93c25ff8'

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
