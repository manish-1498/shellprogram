#!/bin/bash -x
for files in `ls *.txt`;
do
	foldername=`echo $files | awk -F.'{print $1}'`;
         echo $foldername
          mkdir $foldename
          cp "$foldername directory hasbeen copied"
done
