#!/bin/bash

if [ -z $1 ]; then
	echo "Please specify the version number"
	exit
fi

if [ -z $2 ]; then
	echo "Please specify the date of release in the yyyy-mm-dd format"
	exit
fi

sed -i s/\<Version\>[^\"]*\</\<Version\>$1\</ src/config/config.xml
sed -i s/\<Version\>[^\"]*\</\<Version\>$1\</ src/packages/com.qtag.qtag/meta/package.xml
sed -i s/\<ReleaseDate\>[^\"]*\</\<ReleaseDate\>$2\</ src/packages/com.qtag.qtag/meta/package.xml
