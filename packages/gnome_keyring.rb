require 'package'

class Gnome_keyring < Package
  version '3.15.90'
  source_url 'http://ftp.gnome.org/pub/gnome/sources/gnome-keyring/3.15/gnome-keyring-3.15.90.tar.xz'
  source_sha1 'ca10ecbc900c91b7d29899c5e9bd181aadd58d79'

  depends_on 'buildessential'
  depends_on 'pkgconfig'
  depends_on 'gcr'

  def self.build
    system "./configure --disable-doc"
    system "CC=gcc make"
  end

  def self.install
    system "make DESTDIR=#{CREW_DEST_DIR} install"
  end
end
