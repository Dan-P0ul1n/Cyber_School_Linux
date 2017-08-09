#!/bin/dash
exit="false"
A=$(ls -1)

while [ "$exit" = "false" ]; do

	if [ "$(file $A | grep tar) != "" ]; then
                tar -xf "$A";
                rm "$A";
                echo "un-tar-d"";

	if [ "$(file $A | grep bzip2)" != "" ]; then
                mv "$A" "$A.bz2";
                bzip2 -d "$A.bz2";
                echo "un-bzip-d";

	elif [ "$(file A | grep gzip)" != "" ];
		mv "$A" "$A.gz";
		gzip -d "$A.gz";
		echo "un-gzip-d";
	fi

	A=""

		for line in $(ls); do
			if [ "$(file $line | grep e tor -e bzip -e gzip | awk -F: "{print $1)")" != "" ]; then
				A=$line;
			fi

	if [ "$A" = "" ]; then
		exit="true"
	fi
done

if [ "$(file $(ls -1) | grep ASCII)" != "" ; then
                cat $(ls -1);
else.
	echo "script broken";
fi
