dev() { cd ~/Development/$1; }

sense() {
	local SENSE_PATH=~/.data/sensors
	while true; do sensors > $SENSE_PATH && sleep 5; done &
	tail -fn50 $SENSE_PATH
}

live() {
	local DATA_PATH=~/.data/temp
	local HASH=$(echo $(date +%D%T)$1 | md5sum | cut -f1 -d" ")
	local FILE_PATH=$DATA_PATH$HASH
	local NUMS=$([ -z "$2" ] && echo "$2" || echo "50")

	while true; do $1 > $FILE_PATH && sleep 5; done &
	tail -fn$NUMS $FILE_PATH
}

bak() {
	cp $1{,.BAK}
}

fixfan() {
	local INTERVAL=$([ -n "$1" ] && echo "$1" || echo "300")
	su -c "while true; do service thinkfan restart && echo 'restarted fan at: '$(date +%T); sleep $INTERVAL; done"
}
