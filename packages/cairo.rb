require 'package'

class Cairo < Package
  version '1.14.0'
  source_url 'http://cairographics.org/releases/cairo-1.14.0.tar.xz'
  source_sha1 '53cf589b983412ea7f78feee2e1ba9cea6e3ebae'

  depends_on 'buildessential'
  depends_on 'pkgconfig'
  depends_on 'pixman'
  depends_on 'libpng'
  depends_on 'freetype'
  depends_on 'fontconfig'
  depends_on 'libxcb'
  depends_on 'glib'
  
  def self.build
    system "./configure --enable-xlib=no --enable-xcb=yes"
    system "make"
  end
  
  def self.install
    system "make DESTDIR=#{CREW_DEST_DIR} install"
  end
end
