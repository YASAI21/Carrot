#!/bin/sh
# 複数許可する場合は .wav||.meta$ のように変更
extension=".mp3$"
volume="0.1"

# BGMが含まれているディレクトリを指定
bgmPath=""
cd $bgmPath

files=(`ls | grep ${extension}`)
length=${#files[*]}

while :
do
    index=$((RANDOM % ${length}))
    fileName=${files[${index}]}

    afplay ${fileName} -v ${volume}
done
