require 'package'

class Perl_dbi < Package
  version '1.633'
  source_url 'https://cpan.metacpan.org/authors/id/T/TI/TIMB/DBI-1.633.tar.gz'
  source_sha1 'b42bd20708c4bfc10dcf898b0148aef1c1ff02ff'

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
