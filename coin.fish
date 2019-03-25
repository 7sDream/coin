#!/usr/bin/fish
# 抛硬币脚本
# Author: Lucien-X
# Origin: https://www.v2ex.com/t/548388
# LastModified: 2019-02-22
# LastModified: 2019-03-20 by coldnight: porting to fish shell
# LastModified: 2019-03-25 by 7sDream: 
#   - install with fisher or omf
#   - fps, emoji and wait time configure
# Usage: `fisher add 7sDream/coin` or `omf add 7sDream/coin`

function coin

  set -l MOON_EMOJI_LIGHT "🌝"
  set -l MOON_EMOJI_DARK  "🌚"

  if test "$FISH_COIN_EMOJI_USE_FACE" = "0"
    set MOON_EMOJI_LIGHT "🌕"
    set MOON_EMOJI_DARK  "🌑"
  end

  if test -z "$FISH_COIN_FPS"; or test "$FISH_COIN_FPS" -le 0
    set FISH_COIN_FPS 24
  end

  set -l delay (math "1 / $FISH_COIN_FPS")

  if test -z "$FISH_COIN_WAIT_TIME"; or test "$FISH_COIN_WAIT_TIME" -le 0
    set FISH_COIN_WAIT_TIME 1000
  end

  set -l wait (math "floor($FISH_COIN_FPS * $FISH_COIN_WAIT_TIME / 1000)")

  # Define backspace char
  set -l BACKSPACE '\b\b'
  # Loop animation for about 1s
  set -l i 0
  while test "$i" -lt "$wait"
    for COIN in "$MOON_EMOJI_LIGHT" '🌖' '🌗' '🌘' "$MOON_EMOJI_DARK" '🌒' '🌓' '🌔'
      echo -en "$BACKSPACE$COIN"
      sleep $delay;
      set i (math "$i" + 1)
    end
  end
  # Roll the dice eventually
  set -l v (math (random) % 2)
  echo -en $BACKSPACE
  if test "$v" -eq 0
    echo "$MOON_EMOJI_LIGHT"
  else
    echo "$MOON_EMOJI_DARK"
  end
end
