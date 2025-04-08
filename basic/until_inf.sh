until sh -c "ps ax | grep '[s]leep'"; do
	echo "wating sleep"
	sleep 1
done

echo "successed"
