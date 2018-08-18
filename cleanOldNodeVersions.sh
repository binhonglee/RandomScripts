#!/bin/bash

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"

input="tempNodeVer.txt"
nvm ls | sed -r "s/\x1B\[[0-9;]*[JKmsu]//g" > $input

end="no"

while read -r line && [ "$end" = "no" ]; do
	toUninstall=`echo "$line"`
	if [ ${toUninstall:0:2} == "->" ]; then
		echo "Ending..."
		end="yes"
	else
		echo "Uninstalling $toUninstall"
                nvm uninstall $toUninstall
	fi
done<$input

rm $input
