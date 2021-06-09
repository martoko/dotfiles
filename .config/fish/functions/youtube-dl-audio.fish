# Defined in - @ line 1
function youtube-dl-audio --wraps='youtube-dl --extract-audio --audio-format "mp3" --add-metadata --embed-thumbnail -v -o "[%(upload_date)s] %(title)s [%(id)s].%(ext)s"' --description 'alias youtube-dl-audio=youtube-dl --extract-audio --audio-format "mp3" --add-metadata --embed-thumbnail -v -o "[%(upload_date)s] %(title)s [%(id)s].%(ext)s"'
  youtube-dl --extract-audio --audio-format "mp3" --add-metadata --embed-thumbnail -v -o "[%(upload_date)s] %(title)s [%(id)s].%(ext)s" $argv;
end
