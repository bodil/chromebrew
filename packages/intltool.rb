require 'package'

class Intltool < Package
  version '0.50.2'
  source_url 'https://launchpad.net/intltool/trunk/0.50.2/+download/intltool-0.50.2.tar.gz'
  source_sha1 '7fddbd8e1bf94adbf1bc947cbf3b8ddc2453f8ad'

  depends_on 'buildessential'
  depends_on 'perl_xml_parser'
  
  def self.build
    system "./configure"
    system "make"
  end
  
  def self.install
    system "make DESTDIR=#{CREW_DEST_DIR} install"
  end
end
