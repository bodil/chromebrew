require 'package'

class I3 < Package
  version '4.8'
  source_url 'http://i3wm.org/downloads/i3-4.8.tar.bz2'
  source_sha1 '857d8d0014b873de406e2041dea94d81cc515b74'

  depends_on 'buildessential'
  depends_on 'pkgconfig'
  depends_on 'libxcb'
  depends_on 'xcb_util_keysyms'
  depends_on 'xcb_util_cursor'
  depends_on 'xcb_util_wm'
  depends_on 'pango'
  depends_on 'yajl'
  depends_on 'startup_notification'
  depends_on 'libpcre'
  depends_on 'libev'

  def self.build
    system "CC=gcc make"
  end
  
  def self.install
    system "make DESTDIR=#{CREW_DEST_DIR} PREFIX=/usr/local SYSCONFDIR=/usr/local/etc install"
  end         
end
