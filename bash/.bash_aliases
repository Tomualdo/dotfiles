alias ..="cd .."
alias cd..="cd .."
alias ref="source ~/.bashrc"
alias yth='yt-dlp --extract-audio --audio-format mp3 --output "%(uploader)s%(title)s.%(ext)s"'
alias ytv='yt-dlp -f bestvideo[ext=mp4]+bestaudio[ext=m4a]/best[ext=mp4]/best  --add-metadata -i --output "/home/tom/Videos/%(uploader)s%(title)s.%(ext)s" '
alias ytvs='yt-dlp -f bestvideo[ext=mp4]+bestaudio[ext=m4a]/best[ext=mp4]/best --write-srt --sub-lang en --add-metadata -i --output "/home/tom/Videos/%(uploader)s%(title)s.%(ext)s" '
alias ytvp='yt-dlp -f bestvideo[ext=mp4]+bestaudio[ext=m4a]/best[ext=mp4]/best --no-download-archive --write-srt --sub-lang en --add-metadata -i --output "/home/tom/Videos/%(uploader)s/%(playlist_title)s/%(playlist_index)s_%(title)s.%(ext)s" '
alias cpr="rsync --partial --progress --append --rsh=ssh -r -h "
alias mvr="rsync --partial --progress --append --rsh=ssh -r -h --remove-sent-files"
alias curlp="curl -s -x '192.168.100.10:8118' "
alias rsync="rsync --progress --append -h"

# FUNCTIONS

ren(){
    ls $1 | vim - -N -u NONE -n \
    -c ":%s/.*/\=\"mv -i '\".submatch(0).\"' '\".substitute(submatch(0), \" \", \"_\", \"g\").\"'\"/g" \
    -c ":w !sh" \
    -c ":q!" 2> /dev/null
}

ren2(){
    ls $1 | vim - -N -u NONE -n \
    -c ":%s/.*/\=\"mv -i $\".submatch(0).\"$ \".substitute(\"$\".submatch(0), \" \", \"_\", \"g\").\"$\"/g" \
    -c ":%s/\\$/\"/g" \
    -c ":w !sh" \
    -c ":q!" 2> /dev/null
}

ren3(){
    ls $1 | vim - -N -u NONE -n \
    -c ":%s/.*/\=\"mv -i $\".submatch(0).\"$ \".substitute(\"$\".submatch(0), \"S1\", \"\", \"g\").\"$\"/g" \
    -c ":%s/\\$/\"/g" \
    -c ":w !sh" \
    -c ":q!" 2> /dev/null
}

function mkd() { 
    mkdir -p "$@" && cd "$_";
}

function ls.() {
    find .  -maxdepth 1 -type f -name ".*" | xargs ls -la
}

function tv() {
	ssh -T pi "sh playYoutube.sh $1"
}

