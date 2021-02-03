# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=100000
SAVEHIST=100000
setopt appendhistory autocd beep nomatch interactive_comments
bindkey -e
bindkey "\e[3~" delete-char
bindkey "\e[H" beginning-of-line
bindkey "\e[1~" beginning-of-line
bindkey "\e[F" end-of-line
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '~/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall

setopt EXTENDED_HISTORY
setopt HIST_EXPIRE_DUPS_FIRST
setopt HIST_IGNORE_DUPS
setopt HIST_IGNORE_ALL_DUPS
setopt HIST_IGNORE_SPACE
setopt HIST_FIND_NO_DUPS
setopt HIST_SAVE_NO_DUPS
setopt HIST_BEEP
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Za-z}'
zstyle ':completion:*:ssh:*' hosts off
alias sdi="sudo dnf install"
alias sai="sudo apt install"
alias sd="sudo docker"
alias sdc="sudo docker-compose"
alias xs="xsel -b"
alias ffmpeg="ffmpeg -hide_banner"
alias ffprobe="ffprobe -hide_banner"
alias fd="fdfind"
alias yarn="yarnpkg"
alias gg="git log --oneline --graph --all"
alias aria2t="aria2c --seed-time=0"
alias bc="bc -lq"
o() {
	xdg-open $@ &>/dev/null
}
b() {
	if [[ -z $1 ]]; then
		xbacklight -get
	else
		sudo xbacklight -set $1
	fi
}
echo -en "\e]2;$(pwd)\a"
chpwd() {
	emulate -L zsh
	echo -en "\e]2;$(pwd)\a"
	exa
}
mkt() {
	cd $(command mkt)
}
off() {
	if [[ -z "$WSLENV" ]]; then
		sudo poweroff
	else
		wsl.exe --shutdown
	fi
}
export TERM="xterm-256color"
export PATH="$PATH:$HOME/.local/bin:$HOME/.cargo/bin:$HOME/.yarn/bin"
export GOPATH="$HOME/.go"
export PROMPT="%F{196}%n%f@%F{10}%m%f:%B%F{4}%~%f%b "
export RPROMPT="%?"
export EDITOR="nvim"
source /usr/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
