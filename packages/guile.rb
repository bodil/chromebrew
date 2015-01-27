require 'package'

class Guile < Package
  version '2.0.9'
  source_url 'ftp://ftp.gnu.org/gnu/guile/guile-2.0.9.tar.gz'
  source_sha1 'fc5d770e8b1d364b2f222a8f8c96ccf740b2956f'

  depends_on 'buildessential'
  depends_on 'libtool'
  depends_on 'libunistring'
  depends_on 'pkgconfig'
  depends_on 'libffi'
  depends_on 'bdwgc'

  def self.build
    system "./configure --disable-static --disable-error-on-warning"
    system "make"
  end
  
  def self.install
    system "make DESTDIR=#{CREW_DEST_DIR} install"
  end         
end
