require 'package'

class Libtasn1 < Package
  version '4.2'
  source_url 'http://ftp.gnu.org/gnu/libtasn1/libtasn1-4.2.tar.gz'
  source_sha1 'd2fe4bf12dbdc4d6765a04abbf8ddaf7e9163afa'

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
