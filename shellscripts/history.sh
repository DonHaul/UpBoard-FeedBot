#gets script directory
mydir=$(dirname "$0")

#goes to parent directory
cd "$mydir/.."


echo "AAAAAAAA"

#creates if it doesnt exist yet, the historic.log file
touch history.log

#formats date
data=$(date +"%T %d/%m/%Y")

echo "BBBBB"
#joins date and argument
towrite="$1\t$data"


#adds to begining of file -e is for output tabs
echo -e $towrite | cat - history.log > temp && mv temp history.log

echo "AUIOHDIOHSIODHIO"