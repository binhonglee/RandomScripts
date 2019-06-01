#!/bin/bash

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"

input="tempNodeVer.txt"
if [ $(uname) == "Darwin" ]; then
	command="gsed"
else
	command="sed"
fi
nvm ls | $command -r "s/\x1B\[[0-9;]*[JKmsu]//g" > $input

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

nvm use node

rm $input
