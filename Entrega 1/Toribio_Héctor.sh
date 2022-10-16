#Héctor Toribio González

grep '[xX][0-9]\{4\}$' grepdata.txt;					#1
for i in {1..40}
do
	echo -n '-'
done
echo ''

grep '^[0-9]\{3\} ' grepdata.txt;					#2
for i in {1..40}
do
	echo -n '-'
done
echo ''

grep '[[:alpha:]]\{3\}\. [0-9]\{1,2\}, [0-9]\{4\}' grepdata.txt	#3
for i in {1..40}
do
	echo -n '-'
done
echo ''

grep '\([AEIOUaeiou]\).\1' grepdata.txt				#4
for i in {1..40}
do
	echo -n '-'
done
echo ''

grep -v '^S' grepdata.txt						#5
for i in {1..40}
do
	echo -n '-'
done
echo ''

grep -i 'ca' grepdata.txt						#6
for i in {1..40}
do
	echo -n '-'
done
echo ''

grep -n '@' grepdata.txt						#7
for i in {1..40}
do
	echo -n '-'
done
echo ''

grep -v 'Sep\.' grepdata.txt						#8
for i in {1..40}
do
	echo -n '-'
done
echo ''

grep -w 'de' grepdata.txt						#9

