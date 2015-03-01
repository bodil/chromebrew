require 'package'

class Gcr < Package
  version '3.14.0'
  source_url 'http://ftp.gnome.org/pub/gnome/sources/gcr/3.14/gcr-3.14.0.tar.xz'
  source_sha1 'f7c33b8e2cb59269968afcf9aaf4f182db1c548e'

  depends_on 'buildessential'
  depends_on 'pkgconfig'
  depends_on 'intltool'
  depends_on 'gtk3'
  depends_on 'vala'
  depends_on 'p11kit'
  depends_on 'libgcrypt'
  depends_on 'gobject_introspection'
  depends_on 'libxslt'

  def self.build
    system "./configure"
    system "CC=gcc make"
  end
  
  def self.install
    system "make DESTDIR=#{CREW_DEST_DIR} install"
  end
end
