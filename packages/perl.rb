require 'package'

class Perl < Package
  version '5.20.1'
  source_url 'http://www.cpan.org/src/5.0/perl-5.20.1.tar.gz'
  source_sha1 'dad920583cab07e96bb8860a70eebc5fa9cf8e4d'

  depends_on 'buildessential'

  def self.build
    system "./Configure -des -Dusethreads -Duseshrplib -Dprefix=/usr/local -Dvendorprefix=/usr/local -Dlddlflags='-shared' -Dcccdlflags='-fPIC' -Dcc=gcc -Dprivlib=/usr/local/share/perl5/core_perl -Darchlib=/usr/local/lib/perl5/core_perl -Dsitelib=/usr/local/share/perl5/site_perl -Dsitearch=/usr/local/lib/perl5/site_perl -Dvendorlib=/usr/local/share/perl5/vendor_perl -Dvendorarch=/usr/local/lib/perl5/vendor_perl -Dscriptdir=/usr/local/bin/core_perl -Dsitescript=/usr/local/bin/site_perl -Dvendorscript=/usr/local/bin/vendor_perl"
    system "make"
  end

  def self.install
    system "make DESTDIR=#{CREW_DEST_DIR} install"
    system "rm #{CREW_DEST_DIR}/*.0"
  end
end
