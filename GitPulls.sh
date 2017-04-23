ls -d ../*/ > folderList
while read p; do
  echo $p
  cd $p
  git pull
done <folderList
cd ../RandomScripts
rm folderList
