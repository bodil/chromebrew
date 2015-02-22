require 'package'

class Purescript < Package
  version '0.6.8'
  source_url 'https://github.com/purescript/purescript/releases/download/v0.6.8/linux64.tar.gz'
  source_sha1 '381998669b1aeb914f8987eea26934d026747f2e'

  depends_on 'ncurses_so'

  def self.install
    system "mkdir -p #{CREW_DEST_DIR}/usr/local/bin"
    system "install -m0755 psc* #{CREW_DEST_DIR}/usr/local/bin"
  end
end
