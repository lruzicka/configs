# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

# User specific aliases and functions

# for Publican 1.0+
alias pubtest="nice -n 15 publican build '--langs=en-US' --formats='test'"
alias pubsingle="nice -n 15 publican build '--langs=en-US' --formats='html-single'"
alias pubhtml="nice -n 15 publican build '--langs=en-US' --formats='html'"
alias pubhtmls="nice -n 15 publican build '--langs=en-US' --formats='html,html-single'"
alias pubdesk="nice -n 15 publican build '--langs=en-US' --formats='desktop'"
alias pubdesktop="nice -n 15 publican build '--langs=en-US' --formats='desktop'"
alias pubpdf="nice -n 15 publican build '--langs=en-US' --formats='pdf'"
alias pubepub="nice -n 15 publican build '--langs=en-US' --formats='epub'"
alias puball="nice -n 15 publican build '--langs=en-US' --formats='html-single,html,pdf'"
alias pubtxt="nice -n 15 publican build '--langs=en-US' --formats='txt'"

alias tmpsingle="xdg-open /tmp/en-US/html-single/index.html"
alias tmpmulti="xdg-open /tmp/en-US/html/index.html"
alias tmpdesk="xdg-open /tmp/en-US/html-desktop/index.html"
alias tmppdf="xdg-open /tmp/en-US/pdf/*.pdf"

export tmpsingle="tmp/en-US/html-single/index.html"
export tmpmulti="tmp/en-US/html/index.html"
export tmpdesk="tmp/en-US/html-desktop/index.html"
export tmppdf="tmp/en-US/pdf/*.pdf"

alias preview='test -e tmp/en-US/html-single/index.html && firefox tmp/en-US/html-single/index.html || echo '\''Build it, dude.'\'' >&2'

# For Red Hat branded documents in RHOSP Docs Team
alias makepdf='ccutil compile --lang en-US --format pdf --open'
alias makehtml='ccutil compile --lang en-US --format html-single --open'

# For git

alias gp='git pull'
alias gup='git push'
alias ga='git add ./*'
alias grb='git pull --rebase'
alias gcm='git commit -m'
alias gst='git status'
alias ggo='git checkout'
alias gnew='git checkout -b'

#Various aliases for an easy life

alias kin='kinit lruzicka@REDHAT.COM'
alias lapscreen='xrandr --output eDP-1 --auto --output DP-2-2 --off'
alias topscreen='xrandr --output eDP-1 --off --output DP-2-2 --auto'
alias bothscreen='xrandr --output DP-2-2 --auto --output eDP-1 --auto --left-of eDP-1'
alias chat='konversation & > /dev/null'
alias off='systemctl poweroff'

#For the screen
alias b1='echo 100 > /sys/class/backlight/intel_backlight/brightness'
alias b2='echo 200 > /sys/class/backlight/intel_backlight/brightness'
alias b3='echo 300 > /sys/class/backlight/intel_backlight/brightness'
alias b4='echo 400 > /sys/class/backlight/intel_backlight/brightness'
alias b5='echo 500 > /sys/class/backlight/intel_backlight/brightness'
alias b6='echo 600 > /sys/class/backlight/intel_backlight/brightness'
alias b7='echo 700 > /sys/class/backlight/intel_backlight/brightness'

#alias ls="echo you have been hacked"
alias su='su -'

source /usr/share/git-core/contrib/completion/git-prompt.sh


export PS1='[\u@\h \W$(__git_ps1 " (%s)")]\$ '
export GIT_PS1_SHOWUNTRACKEDFILES=true
export GIT_PS1_SHOWDIRTYSTATE=true


