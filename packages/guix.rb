require 'package'

class Guix < Package
  version '0.8'
  source_url 'http://alpha.gnu.org/gnu/guix/guix-0.8.tar.gz'
  source_sha1 '763e1afeee4fa7e0522523231c06611b0488edda'

  depends_on 'buildessential'
  depends_on 'pkgconfig'
  depends_on 'bdwgc'
  depends_on 'guile'
  depends_on 'libgcrypt'
  depends_on 'sqlite'
  depends_on 'bz2'

  def self.build
    system "./configure --with-store-dir=/usr/local/gnu/store --localstatedir=/usr/local/gnu/var"
    system "make"
  end
  
  def self.install
    system "make DESTDIR=#{CREW_DEST_DIR} install"
    system "mkdir -p #{CREW_DEST_DIR}/usr/local/gnu/store"
    system "mkdir -p #{CREW_DEST_DIR}/usr/local/gnu/var"
  end         
end
