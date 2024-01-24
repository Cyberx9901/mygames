url='https://raw.githubusercontent.com/Cyberx9901/mygames/main'
export GPG_TTY=$(tty)
file=$(curl -L "$url/list.txt" | fzf)
curl -L "$url/$(echo $file | sed s/" "/"%20"/g)" | gpg -a -d --batch --passphrase $(cat key.txt) -o "$(echo "$file" | sed s/"\.asc"/""/g)"
