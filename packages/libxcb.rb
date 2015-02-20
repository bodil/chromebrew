require 'package'

class Libxcb < Package
  version '1.11'
  source_url 'http://xcb.freedesktop.org/dist/libxcb-1.11.tar.bz2'
  source_sha1 '8343b417d7eeb2a2c6b6c4a87a03a4fd0fc65c46'

  depends_on 'buildessential'
  depends_on 'pkgconfig'
  depends_on 'python'
  depends_on 'xcbproto'
  depends_on 'libpthread_stubs'
  depends_on 'libxau'
  depends_on 'xorg_macros'
  
  def self.build
    system "./configure"
    system "make"
  end
  
  def self.install
    system "make DESTDIR=#{CREW_DEST_DIR} install"
  end
end
