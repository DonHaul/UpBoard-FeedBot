git add .
if [ -z "$1" ]
then
    echo "put commit message next time!"
      git commit -m "-"
else
      git commit -m $1
fi
git push
gets script directory
mydir=$(dirname "$0")

#get first word of each line
cams=$(cut -d' ' -f1 $mydir/../sysconfig.txt)
echo $cams
echo jeff

count=0
for one_thing in $cams; do
   

    if [ "$count" != "0" ]; then
     echo $one_thing
     echo "not zero"
     tmux new-session -d "bash $mydir/gitupdateupb.sh $one_thing"
    fi

    ((count++))
    echo $count
done

   