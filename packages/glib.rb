require 'package'

class Glib < Package
  version '2.43.4'
  source_url 'https://download.gnome.org/sources/glib/2.43/glib-2.43.4.tar.xz'
  source_sha1 '8d9e3880e4057f1cb259954b82727f7adbd37428'

  depends_on 'buildessential'
  depends_on 'pkgconfig'
  depends_on 'python27'
  depends_on 'perl'
  depends_on 'libffi'
  
  def self.build
    system "./configure"
    system "make"
  end
  
  def self.install
    system "make DESTDIR=#{CREW_DEST_DIR} install"
  end
end
