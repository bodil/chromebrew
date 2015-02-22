require 'package'

class Vala < Package
  version '0.27.1'
  source_url 'http://ftp.gnome.org/pub/gnome/sources/vala/0.27/vala-0.27.1.tar.xz'
  source_sha1 'ac301066a1f2b52007e974ea4816a9755b882c92'

  depends_on 'buildessential'
  depends_on 'pkgconfig'
  depends_on 'flex'
  depends_on 'bison'
  depends_on 'glib'
  
  def self.build
    system "./configure"
    system "make"
  end
  
  def self.install
    system "make DESTDIR=#{CREW_DEST_DIR} install"
  end
end
