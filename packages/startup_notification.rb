require 'package'

class Startup_notification < Package
  version '0.12'
  source_url 'http://www.freedesktop.org/software/startup-notification/releases/startup-notification-0.12.tar.gz'
  source_sha1 '4198bce2808d03160454a2940d989f3a5dc96dbb'

  depends_on 'buildessential'
  depends_on 'pkgconfig'
  depends_on 'libxcb'
  depends_on 'libx11'
  
  def self.build
    system "./configure"
    system "make"
  end
  
  def self.install
    system "make DESTDIR=#{CREW_DEST_DIR} install"
  end
end
