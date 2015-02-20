require 'package'

class Pango < Package
  version '1.36.8'
  source_url 'http://ftp.gnome.org/pub/GNOME/sources/pango/1.36/pango-1.36.8.tar.xz'
  source_sha1 'c6ba02ee8f9d8b22b7cfd74c4b6ae170bebc8d2b'

  depends_on 'buildessential'
  depends_on 'pkgconfig'
  depends_on 'harfbuzz'
  depends_on 'fontconfig'
  depends_on 'freetype'
  depends_on 'cairo'
  
  def self.build
    system "./configure"
    system "make"
  end
  
  def self.install
    system "make DESTDIR=#{CREW_DEST_DIR} install"
  end
end
