require 'package'

class Libpthread_stubs < Package
  version '0.3'
  source_url 'http://xcb.freedesktop.org/dist/libpthread-stubs-0.3.tar.bz2'
  source_sha1 '7fc486ad0ec54938f8b781cc374218f50eac8b99'

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
