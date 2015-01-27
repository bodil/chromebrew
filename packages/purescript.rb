require 'package'

class Purescript < Package
  version '0.6.4'
  source_url 'https://github.com/purescript/purescript/releases/download/v0.6.4/linux64.tar.gz'
  source_sha1 '805826a5e45aaddf6963c4adbb5a09a0ea3a99cb'

  depends_on 'ncurses_so'
  
  def self.install
    system "mkdir -p #{CREW_DEST_DIR}/usr/local/bin"
    system "install -m0755 psc* #{CREW_DEST_DIR}/usr/local/bin"
  end
end
