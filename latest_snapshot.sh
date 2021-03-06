var1=$(date --rfc-3339="seconds" -d "`wget -S --spider https://snapshot.lisknode.io/blockchain.db.gz 2>&1 | grep -o -P "Last-Modified:.*" --line-buffered | sed -u -r "s/Last-Modified:\s//"`")
var2=$(date --rfc-3339="seconds" -d "`wget -S --spider https://lisktools.io/backups/blockchain.db.gz 2>&1 | grep -o -P "Last-Modified:.*" --line-buffered | sed -u -r "s/Last-Modified:\s//"`")
var3=$(date --rfc-3339="seconds" -d "`wget -S --spider https://s.mylisk.com/blockchain.db.gz 2>&1 | grep -o -P "Last-Modified:.*" --line-buffered | sed -u -r "s/Last-Modified:\s//"`")
var4=$(date --rfc-3339="seconds" -d "`wget -S --spider https://snapshot.thepool.io/blockchain.db.gz 2>&1 | grep -o -P "Last-Modified:.*" --line-buffered | sed -u -r "s/Last-Modified:\s//"`")
var5=$(date --rfc-3339="seconds" -d "`wget -S --spider https://snapshot.liskworld.info/blockchain.db.gz 2>&1 | grep -o -P "Last-Modified:.*" --line-buffered | sed -u -r "s/Last-Modified:\s//"`")
var6=$(date --rfc-3339="seconds" -d "`wget -S --spider https://downloads.lisk.io/lisk/main/blockchain.db.gz 2>&1 | grep -o -P "Last-Modified:.*" --line-buffered | sed -u -r "s/Last-Modified:\s//"`")
var7=$(date --rfc-3339="seconds" -d "`wget -S --spider http://lisk.mainchain.us/blockchain.db.gz 2>&1 | grep -o -P "Last-Modified:.*" --line-buffered | sed -u -r "s/Last-Modified:\s//"`")
echo -e "\e[33m"
todate1=$(date -d "$var1" +"%Y-%m-%d %H:%M:%S")
echo "gr33ndrag0n " $todate1
todate2=$(date -d "$var2" +"%Y-%m-%d %H:%M:%S")
echo "mrv         " $todate2
todate3=$(date -d "$var3" +"%Y-%m-%d %H:%M:%S")
echo "bioly       " $todate3
todate4=$(date -d "$var4" +"%Y-%m-%d %H:%M:%S")
echo "karek       " $todate4
todate5=$(date -d "$var5" +"%Y-%m-%d %H:%M:%S")
echo "corsaro     " $todate5
todate6=$(date -d "$var6" +"%Y-%m-%d %H:%M:%S")
echo "lisk hq     " $todate6
todate7=$(date -d "$var7" +"%Y-%m-%d %H:%M:%S")
echo "phoenix1969     " $todate7
echo -e "\e[39m"



datex1=$(date -d "$todate1" +%s)
#echo $datex1

datex2=$(date -d "$todate2" +%s)
#echo $datex2

datex3=$(date -d "$todate3" +%s)
#echo $datex3

datex4=$(date -d "$todate4" +%s)
#echo $datex4

datex5=$(date -d "$todate5" +%s)
#echo $datex5

datex6=$(date -d "$todate6" +%s)
#echo $datex6

datex7=$(date -d "$todate7" +%s)
#echo $datex7




if [ $datex1 \> $datex2 -a $datex1 \> $datex3 -a $datex1 \> $datex4 -a $datex1 \> $datex5 ];
then
   echo "latest snapshot is on gr33ndrag0n repo";
   echo "https://snapshot.lisknode.io/";
   echo "rebuild using latest snapshot with:";
   echo "bash lisk.sh rebuild -u https://snapshot.lisknode.io/ -f blockchain.db.gz"

fi;


if [ $datex2 \> $datex3 -a $datex2 \> $datex4 -a $datex2 \> $datex5 -a $datex2 \> $datex1 -a $datex2 \> $datex6 ];
then
   echo "latest snapshot is on mrv repo";
   echo "https://lisktools.io/backups/";
   echo "rebuild using latest snapshot with:";
   echo "bash lisk.sh rebuild -u https://lisktools.io/backups/ -f blockchain.db.gz"

fi;

if [ $datex3 \> $datex4 -a $datex3 \> $datex5 -a $datex3 \> $datex1 -a $datex3 \> $datex2 -a $datex3 \> $datex6 ];
then
   echo "latest snapshot is on bioly repo";
   echo "https://s.mylisk.com/";
   echo "rebuild using latest snapshot with:";
   echo "bash lisk.sh rebuild -u https://s.mylisk.com/ -f blockchain.db.gz"

fi;

if [ $datex4 \> $datex5 -a $datex4 \> $datex6 -a $datex4 \> $datex1 -a $datex4 \> $datex2 -a $datex4 \> $datex3 ];
then
   echo "latest snapshot is on karek repo";
   echo "https://snapshot.thepool.io/";
   echo "rebuild using latest snapshot with:";
   echo "bash lisk.sh rebuild -u https://snapshot.thepool.io/ -f blockchain.db.gz"

fi;

if [ $datex5 \> $datex6 -a $datex5 \> $datex1 -a $datex5 \> $datex2 -a $datex5 \> $datex3 -a $datex5 \> $datex4 ];
then
   echo "latest snapshot is on corsaro repo";
   echo "https://snapshot.liskworld.info/";
   echo "rebuild using latest snapshot with:";
   echo "bash lisk.sh rebuild -u https://snapshot.liskworld.info/ -f blockchain.db.gz"

fi;

if [ $datex6 \> $datex1 -a $datex6 \> $datex2 -a $datex6 \> $datex3 -a $datex6 \> $datex4 -a $datex6 \> $datex5 ];
then
   echo "latest snapshot is on lisk hq repo";
   echo "https://downloads.lisk.io/lisk/main/";
   echo "rebuild using latest snapshot with:";
   echo "bash lisk.sh rebuild -u https://downloads.lisk.io/lisk/main/"
 fi;
 
 if [ $datex7 \> $datex1 -a $datex7 \> $datex2 -a $datex7 \> $datex3 -a $datex7 \> $datex4 -a $datex7 \> $datex6 ];
then
   echo "latest snapshot is on Phoenix repo";
   echo "http://lisk.mainchain.us/";
   echo "rebuild using latest snapshot with:";
   echo "bash lisk.sh rebuild -u http://lisk.mainchain.us/ -f blockchain.db.gz"
 fi;


