#!/bin/bash
CHAPTER=$(cat chapter.cache)
echo $CHAPTER
let CHAPTER=$CHAPTER+1
mkdir chapter$CHAPTER
cd chapter$CHAPTER
CURRENT=1
args=$@
unset $args[-1]
for h in $args;do
	echo page$CURRENT
	cp ../$h page$CURRENT.pdf;
	let CURRENT=$CURRENT+1 ;
	done;
echo ($@[-1])
cp ($@[-1]) worksheet.pdf
cd ..
echo $CHAPTER > chapter.cache
