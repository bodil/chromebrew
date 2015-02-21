require 'package'

class Atk < Package
  version '2.15.4'
  source_url 'http://ftp.gnome.org/pub/gnome/sources/atk/2.15/atk-2.15.4.tar.xz'
  source_sha1 'a17479e44d12db056612749cdb43d89f64cc9a64'

  depends_on 'buildessential'
  depends_on 'pkgconfig'
  depends_on 'python'
  depends_on 'perl'
  depends_on 'glib'
  
  def self.build
    system "./configure"
    system "make"
  end
  
  def self.install
    system "make DESTDIR=#{CREW_DEST_DIR} install"
  end
end
