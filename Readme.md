# Coin

A script for toss a coin in the shell.

![](http://rikka.7sdre.am/files/97d1aed3-8f66-485d-9b98-61e3b535a673.gif)

**Need fish version >= 3.0.**

## Origin

Origin zsh script by [@Coder89757](https://www.v2ex.com/member/Coder89757)：https://www.v2ex.com/t/548388

Fish port by [@coldnight](https://github.com/coldnight)：https://gist.github.com/coldnight/5c9964769e9a39bf17bb767c88e8c366

I make this repo just for quick install with [fisher](https://github.com/jorgebucaran/fisher) or [omf](https://github.com/oh-my-fish/oh-my-fish).

## Install

`fisher add 7sDream/coin`

or

`omf install https://github.com/7sDream/coin` (Not tested, I don't use omf)

## Configure

Default coin emoji is 🌝 and 🌚, set `FISH_COIN_EMOJI_USE_FACE` to `0` to use 🌕 and 🌑.

Default FPS is 24，you can change it with `FISH_COIN_FPS`. 

**Notice: show character need time too, so the higher the FPS, the bigger deviation, so lower than 30 is recommended**

Default waiting time is 1s before show the result, change with `FISH_COIN_WAIT_TIME`(millisecond).

Example: 

```fish
set -g FISH_COIN_EMOJI_USE_FACE 0
set -g FISH_COIN_FPS 30
set -g FISH_COIN_WAIT_TIME 500
```

## License

**I don't own this code, ask [@Coder89757](https://www.v2ex.com/member/Coder89757) for a license if you need one.**
