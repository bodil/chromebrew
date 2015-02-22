require 'package'

class Libxslt < Package
  version '1.1.28'
  source_url 'ftp://xmlsoft.org/libxslt/libxslt-1.1.28.tar.gz'
  source_sha1 '4df177de629b2653db322bfb891afa3c0d1fa221'

  depends_on 'buildessential'
  depends_on 'pkgconfig'
  depends_on 'python'
  depends_on 'libxml2'
  
  def self.build
    system "./configure"
    system "CC=gcc make"
  end
  
  def self.install
    system "make DESTDIR=#{CREW_DEST_DIR} install"
  end
end
