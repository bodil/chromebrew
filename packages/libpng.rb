require 'package'

class Libpng < Package
  version '1.6.16'
  source_url 'http://prdownloads.sourceforge.net/libpng/libpng-1.6.16.tar.xz'
  source_sha1 '31855a8438ae795d249574b0da15b34eb0922e13'

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
