require 'package'

class Perl_xml_parser < Package
  version '2.36'
  source_url 'http://search.cpan.org/CPAN/authors/id/M/MS/MSERGEANT/XML-Parser-2.36.tar.gz'
  source_sha1 '74acac4f939ebf788d8ef5163cbc9802b1b04bfa'

  depends_on 'buildessential'
  depends_on 'perl'
  
  def self.build
    system "perl Makefile.PL PREFIX=/usr/local"
    system "make"
  end
  
  def self.install
    system "make DESTDIR=#{CREW_DEST_DIR} install"
  end
end
