require 'package'

class Libpcre < Package
  version '8.36'
  source_url 'ftp://ftp.csx.cam.ac.uk/pub/software/programming/pcre/pcre-8.36.tar.bz2'
  source_sha1 '9a074e9cbf3eb9f05213fd9ca5bc188644845ccc'

  depends_on 'buildessential'
  depends_on 'pkgconfig'
  depends_on 'bz2'
  
  def self.build
    system "./configure --enable-unicode-properties"
    system "make"
  end
  
  def self.install
    system "make DESTDIR=#{CREW_DEST_DIR} install"
  end
end
