require 'package'

class Libgpgerror < Package
  version '1.17'
  source_url 'ftp://ftp.gnupg.org/gcrypt/libgpg-error/libgpg-error-1.17.tar.bz2'
  source_sha1 'ba5858b2947e7272dd197c87bac9f32caf29b256'

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
