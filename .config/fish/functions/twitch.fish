function twitch;
  # mpv "https://twitch.tv/$argv[1]" --really-quiet --no-resume-playback &
  streamlink twitch.tv/$argv[1] $argv[2] --default-stream "best" --quiet --twitch-disable-ads --player "mpv --cache 2048 --no-resume-playback" &
  disown
  weechat -r "/set irc.server.twitch.autojoin #$argv[1]"
  weechat -r "/set irc.server.twitch.autojoin null; /quit"
end
