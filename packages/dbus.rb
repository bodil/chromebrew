require 'package'

class Dbus < Package
  version '1.9.12'
  source_url 'http://dbus.freedesktop.org/releases/dbus/dbus-1.9.12.tar.gz'
  source_sha1 '2bf2005edbef3f015e5e0f38ad3fd7b67f9f33cd'

  depends_on 'buildessential'
  depends_on 'pkgconfig'
  depends_on 'glib'
  depends_on 'python'
  
  def self.build
    system "./configure"
    system "make"
  end
  
  def self.install
    system "make DESTDIR=#{CREW_DEST_DIR} install"
  end
end
