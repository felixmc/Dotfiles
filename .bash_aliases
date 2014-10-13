alias ssh-aws='ssh -i ~/Development/keys/aws-debian-main.pem admin@felixmilea.com'
alias repi-ssh='ssh felix@dev.repiscore.com'
alias repi-sshfs='sshfs felix@dev.repiscore.com:/ /home/felix/Development/sshfs/repiscore'
alias si3='startx ~/.xsession-i3 &'

alias i2pirc='su -c "irssi" i2p-user'

alias clear='clear;echo STOP USING CLEAR;beep'
alias record='dir=~/history/$(date +%Y/%m/%d);mkdir -p $dir && script -qf $dir/$(date +%F_%T)'

