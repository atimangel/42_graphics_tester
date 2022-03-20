#! /bin/zsh
SUBJECT=""
TEST_DIRECTORY=""
clear
echo SUBJECT=$SUBJECT TEST_DIRECTORY=$TEST_DIRECTORY
case=(`ls ${TEST_DIRECTORY}`) 
read; clear
for testcase in ${case}
do
	echo "> cat ${testcase}; ./${SUBJECT} ${testcase}"
	cat ${testcase}; ./${SUBJECT} ${testcase}
	read; clear
done
