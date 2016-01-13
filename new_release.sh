#!/bin/bash

if [ -z $1 ]; then
	echo "Please specify the version number"
	exit
fi

sed -i s/\<Version\>[^\"]*\</\<Version\>$1\</ src/config/config.xml
sed -i s/\<Version\>[^\"]*\</\<Version\>$1\</ src/packages/com.qtag.qtag/meta/package.xml
