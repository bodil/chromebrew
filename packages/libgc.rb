require 'package'

class Libgc < Package
  version '7.4.2'
  source_url 'http://www.hboehm.info/gc/gc_source/gc-7.4.2.tar.gz'
  source_sha1 'cd4a54620c38a2c361b3ee99dd134dbffb57c313'

  depends_on 'buildessential'
  depends_on 'pkgconfig'
  depends_on 'libatomicops'

  def self.build
    system "./configure --enable-cplusplus"
    system "CC=gcc make"
  end
  
  def self.install
    system "make DESTDIR=#{CREW_DEST_DIR} install"
  end
end
