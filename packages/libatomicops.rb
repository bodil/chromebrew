require 'package'

class Libatomicops < Package
  version '7.4.0'
  source_url 'http://www.hboehm.info/gc/gc_source/libatomic_ops-7.4.0.tar.gz'
  source_sha1 '3397c2b2a02be3c27af6ed603332e81464447653'

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
