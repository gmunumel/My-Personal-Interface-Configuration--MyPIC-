# /etc/bash/bashrc
#
# This file is sourced by all *interactive* bash shells on startup,
# including some apparently interactive shells such as scp and rcp
# that can't tolerate any output.  So make sure this doesn't display
# anything or bad things will happen !


# Test for an interactive shell.  There is no need to set anything
# past this point for scp and rcp, and it's important to refrain from
# outputting anything in those cases.

if [[ $- != *i* ]] ; then
	# Shell is non-interactive.  Be done now!
	return
fi

# Bash won't get SIGWINCH if another process is in the foreground.
# Enable checkwinsize so that bash will check the terminal size when
# it regains control.  #65623
# http://cnswww.cns.cwru.edu/~chet/bash/FAQ (E11)
shopt -s checkwinsize

# Enable history appending instead of overwriting.  #139609
shopt -s histappend

# Change the window title of X terminals 
case ${TERM} in
	xterm*|rxvt*|URxvt*|Eterm|aterm|kterm|gnome*|interix)
		PROMPT_COMMAND='echo -ne "\033]0;${USER}@${HOSTNAME%%.*}:${PWD/$HOME/~}\007"'
		;;
	screen)
		PROMPT_COMMAND='echo -ne "\033_${USER}@${HOSTNAME%%.*}:${PWD/$HOME/~}\033\\"'
		;;
esac

use_color=false

# Set colorful PS1 only on colorful terminals.
# dircolors --print-database uses its own built-in database
# instead of using /etc/DIR_COLORS.  Try to use the external file
# first to take advantage of user additions.  Use internal bash
# globbing instead of external grep binary.
safe_term=${TERM//[^[:alnum:]]/?}   # sanitize TERM
match_lhs=""
[[ -f ~/.dir_colors   ]] && match_lhs="${match_lhs}$(<~/.dir_colors)"
[[ -f /etc/DIR_COLORS ]] && match_lhs="${match_lhs}$(</etc/DIR_COLORS)"
[[ -z ${match_lhs}    ]] \
	&& type -P dircolors >/dev/null \
	&& match_lhs=$(dircolors --print-database)
[[ $'\n'${match_lhs} == *$'\n'"TERM "${safe_term}* ]] && use_color=true

#if ${use_color} ; then
if true ; then
	# Enable colors for ls, etc.  Prefer ~/.dir_colors #64489
	if type -P dircolors >/dev/null ; then
		if [[ -f ~/.dir_colors ]] ; then
			eval $(dircolors -b ~/.dir_colors)
		elif [[ -f /etc/DIR_COLORS ]] ; then
			eval $(dircolors -b /etc/DIR_COLORS)
		fi
	fi

	if [[ ${EUID} == 0 ]] ; then
		#PS1='\[\033[01;31m\]\h\[\033[01;34m\] \W \$\[\033[00m\] '
        PS1='\n\[\033[0;32m\]\u@\h \[\033[1;33m\]\w\n\[\033[0m\]> '
        #PS1="`fortune` \$ "
	else
		#PS1='\[\033[01;32m\]\u@\h\[\033[01;34m\] \w \$\[\033[00m\] '
        PS1='\n\[\033[0;32m\]\u@\h \[\033[1;33m\]\w\n\[\033[0m\]> '
        #PS1="`fortune` \$ "
	fi

	alias ls='ls --color=auto'
	alias grep='grep --colour=auto'
else
	if [[ ${EUID} == 0 ]] ; then
		# show root@ when we don't have colors
		PS1='\u@\h \W \$ '
	else
		PS1='\u@\h \w \$ '
	fi
fi

# Try to keep environment pollution down, EPA loves us.
unset use_color safe_term match_lhs

# Agregado por n0dix. 24-01-2010
#PATH=$HOME/scripts

#alias emacsnw='emacs -nw'
alias mountpen='sudo mount /dev/sdb1 /media/pen'
alias umountpen='sudo umount /media/pen'

# alias pacman='packer'
alias mountdvd='sudo  mount -t iso9660 -o ro /dev/cdrom dvd/'
alias umountdvd='sudo umount /media/dvd'
alias shn='sudo shutdown -h now'
alias mpdup='mpc update / --wait'
alias lsorhpans='sudo pacman -Qdtq'
alias rmorphans='sudo pacman -Rs $(sudo pacman -Qtdq)'
alias mpdrun='mpd /home/alucard/.mpd/config/mpd.conf'
alias mpdstop='killall mpd'
alias pacnew='sudo find / -name "*.pacnew"'
alias ..='cd ..'
alias ll='ls -la'
alias pacup='packer -Syu'

alias lampup='sudo /etc/rc.d/httpd start; sudo /etc/rc.d/mysqld start'
alias lampdown='sudo /etc/rc.d/httpd stop; sudo /etc/rc.d/mysqld stop'
alias grub2-update='sudo grub-mkconfig -o /boot/grub/grub.cfg'
alias music='ncmpcpp'
alias gitpull='git commit -m "update files"; git push origin master'
alias rm='rm -r'
alias jflexproy1='cd ~/Documentos/uni/sept-dic\ 10/trad-inter/lab/DooD'
alias jflexproy2='cd ~/Documentos/uni/sept-dic\ 10/trad-inter/lab/DooD2'
alias jflexproy3='cd ~/Documentos/uni/sept-dic\ 10/trad-inter/lab/DooD3'
alias proygraficas='cd ~/Documentos/uni/sept-dic\ 10/graficas/lab/spaceInvaders/'
alias proygraficas2='cd ~/Documentos/uni/sept-dic\ 10/graficas/lab/proy2/proy2'
alias proygraficas3='cd ~/Documentos/uni/sept-dic\ 10/graficas/lab/proy3/killthemall'
alias comptar='tar czfv '
alias reconection='sudo sh scripts/jDownloader/reconexion.sh'
