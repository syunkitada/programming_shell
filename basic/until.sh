#!/bin/bash

NEXT_WAIT_TIME=0
UNTIL_TIME=10
INTERVAL=2

until sh -c "ps ax | grep '[s]leep'"; do
	_=$((NEXT_WAIT_TIME += INTERVAL))
	if [ $NEXT_WAIT_TIME -ge $UNTIL_TIME ]; then
		break
	fi
	echo "sleep ${NEXT_WAIT_TIME}"
	sleep "${NEXT_WAIT_TIME}"
done
if [ "${NEXT_WAIT_TIME}" -ge $UNTIL_TIME ]; then
	echo "failed"
	exit 1
fi

echo "successed"
