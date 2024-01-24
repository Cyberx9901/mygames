url='https://raw.githubusercontent.com/Cyberx9901/mygames/main'
export GPG_TTY=$(tty)
curl -L "$url/$(cat $url/list.txt | fzf )" | gpg -a -d --batch --passphrase $(cat key.txt)
