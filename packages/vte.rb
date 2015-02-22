require 'package'

class Vte < Package
  version '0.39.1'
  source_url 'http://ftp.gnome.org/pub/gnome/sources/vte/0.39/vte-0.39.1.tar.xz'
  source_sha1 'a03da1b686642a5f471a8e588c3347cb8340b55b'

  depends_on 'buildessential'
  depends_on 'pkgconfig'
  depends_on 'gtk3'
  depends_on 'vala'
  depends_on 'libxml2'
  
  def self.build
    system "sed -i -- 's/ | FS_NOCOW_FL//' src/vteutils.c"
    system "./configure"
    system "CC=gcc make"
  end
  
  def self.install
    system "make DESTDIR=#{CREW_DEST_DIR} install"
  end
end
