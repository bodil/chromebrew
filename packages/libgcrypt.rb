require 'package'

class Libgcrypt < Package
  version '1.6.2'
  source_url 'ftp://ftp.gnupg.org/gcrypt/libgcrypt/libgcrypt-1.6.2.tar.bz2'
  source_sha1 'cc31aca87e4a3769cb86884a3f5982b2cc8eb7ec'

  depends_on 'buildessential'
  depends_on 'pkgconfig'
  depends_on 'libgpgerror'
  
  def self.build
    system "./configure"
    system "make"
  end
  
  def self.install
    system "make DESTDIR=#{CREW_DEST_DIR} install"
  end         
end
