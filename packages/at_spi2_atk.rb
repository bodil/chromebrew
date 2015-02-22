require 'package'

class At_spi2_atk < Package
  version '2.15.4'
  source_url 'http://ftp.gnome.org/pub/gnome/sources/at-spi2-atk/2.15/at-spi2-atk-2.15.4.tar.xz'
  source_sha1 '82475dbbd41780758c693bee8998e15825381c62'

  depends_on 'buildessential'
  depends_on 'pkgconfig'
  depends_on 'dbus'
  depends_on 'at_spi2_core'
  depends_on 'atk'
  
  def self.build
    system "./configure"
    system "make"
  end
  
  def self.install
    system "make DESTDIR=#{CREW_DEST_DIR} install"
  end
end
