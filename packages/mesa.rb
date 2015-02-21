require 'package'

class Mesa < Package
  version '10.4.4'
  source_url 'ftp://ftp.freedesktop.org/pub/mesa/10.4.4/MesaLib-10.4.4.tar.bz2'
  source_sha1 '4d5b2cc992a21cdef07da5ccd7a705039df6f094'

  depends_on 'buildessential'
  depends_on 'pkgconfig'
  depends_on 'glproto'
  depends_on 'libx11'
  depends_on 'flex'
  depends_on 'bison'
  
  def self.build
    system "./autogen.sh --disable-dri --disable-dri3 --enable-xlib-glx --with-gallium-drivers=\"\""
    system "make"
  end
  
  def self.install
    system "make DESTDIR=#{CREW_DEST_DIR} install"
  end
end
