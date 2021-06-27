set -x EDITOR nvim
set -x GTK_IM_MODULE fcitx
set -x QT_IM_MODULE fcitx
set -x XMODIFIERS @im=fcitx

set -x PATH $PATH $HOME/.local/bin
set -x PATH $PATH $HOME/.yarn/bin

kitty + complete setup fish | source
register-python-argcomplete --shell fish pubs | source

if test -z $DISPLAY; and [ (tty) = /dev/tty1 ];
  set -x MOZ_ENABLE_WAYLAND 1
  set -x QT_QPA_PLATFORM wayland
  set -x XDG_SESSION_TYPE wayland
  sway
end

if test -z $DISPLAY; and [ (tty) = /dev/tty2 ];
  startx
end
