require 'package'

class Evilvte < Package
  version '0.5.2'
  source_url 'http://www.calno.com/evilvte/evilvte-0.5.2~pre1.tar.xz'
  source_sha1 'fb36a51e5492dbec09e0fea89a115e71a3c58448'

  depends_on 'buildessential'
  depends_on 'pkgconfig'
  depends_on 'vte_gtk2'

  def self.build
    system "echo '#define BACKGROUND_SATURATION 0.15' > src/config.h"
    system "echo '#define BACKGROUND_OPACITY TRUE' >> src/config.h"
    system "echo '#define COLOR_STYLE ZENBURN_DARK' >> src/config.h"
    system "echo '#define COMMAND_AT_ROOT_WINDOW TRUE' >> src/config.h"
    system "echo '#define COMMAND_DOCK_MODE TRUE' >> src/config.h"
    system "echo '#define COMMAND_EXEC_PROGRAM TRUE' >> src/config.h"
    system "echo '#define COMMAND_FULLSCREEN TRUE' >> src/config.h"
    system "echo '#define COMMAND_FONT TRUE' >> src/config.h"
    system "echo '#define COMMAND_GEOMETRY TRUE' >> src/config.h"
    system "echo '#define COMMAND_LOGIN_SHELL TRUE' >> src/config.h"
    system "echo '#define COMMAND_SET_TITLE TRUE' >> src/config.h"
    system "echo '#define COMMAND_SHOW_HELP TRUE' >> src/config.h"
    system "echo '#define COMMAND_SHOW_OPTIONS TRUE' >> src/config.h"
    system "echo '#define COMMAND_SHOW_VERSION TRUE' >> src/config.h"
    system "echo '#define COMMAND_TAB_NUMBERS TRUE' >> src/config.h"
    system "echo '#define FONT \"Pragmata Pro 12\"' >> src/config.h"
    system "echo '#define FONT_ANTI_ALIAS TRUE' >> src/config.h"
    system "echo '#define FONT_ENABLE_BOLD_TEXT TRUE' >> src/config.h"
    system "echo '#define MOUSE_CTRL_SATURATION TRUE' >> src/config.h"
    system "echo '#define SCROLL_LINES 100000' >> src/config.h"
    system "echo '#define SCROLLBAR OFF_R' >> src/config.h"
    system "echo '#define SHOW_WINDOW_BORDER FALSE' >> src/config.h"
    system "echo '#define SHOW_WINDOW_DECORATED TRUE' >> src/config.h"
    system "echo '#define SHOW_WINDOW_ICON TRUE' >> src/config.h"
    system "echo '#define WORD_CHARS \"-A-Za-z0-9_$.+!*(),;:@&=?/~#%\"' >> src/config.h"
    system "echo '#define TAB TRUE' >> src/config.h"
    system "echo '#define TAB_NEW_PATH_EQUAL_OLD TRUE' >> src/config.h"
    system "echo '#define TAB_SHOW_INFO_AT_TITLE TRUE' >> src/config.h"
    system "echo '#define TABBAR FALSE' >> src/config.h"
    system "echo '#define HOTKEY TRUE' >> src/config.h"
    system "echo '#define HOTKEY_COPY ALT(GDK_C) || ALT(GDK_c)' >> src/config.h"
    system "echo '#define HOTKEY_PASTE ALT(GDK_V) || ALT(GDK_v)' >> src/config.h"
    system "echo '#define HOTKEY_FONT_BIGGER ALT(GDK_plus)' >> src/config.h"
    system "echo '#define HOTKEY_FONT_SMALLER ALT(GDK_minus)' >> src/config.h"
    system "echo '#define HOTKEY_FONT_DEFAULT_SIZE ALT(GDK_0)' >> src/config.h"
    system "echo '#define HOTKEY_TAB_ADD CTRL_SHIFT(GDK_T) || CTRL_SHIFT(GDK_t)' >> src/config.h"
    system "echo '#define HOTKEY_TAB_REMOVE CTRL_SHIFT(GDK_W) || CTRL_SHIFT(GDK_w)' >> src/config.h"
    system "echo '#define HOTKEY_TAB_PREVIOUS CTRL_ALT(GDK_Page_Up)' >> src/config.h"
    system "echo '#define HOTKEY_TAB_NEXT CTRL_ALT(GDK_Page_Down)' >> src/config.h"

    system "./configure"
    system "CC=gcc make"
  end

  def self.install
    system "make DESTDIR=#{CREW_DEST_DIR} install"
  end
end
