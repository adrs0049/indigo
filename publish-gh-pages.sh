#!/bin/bash

function exe_cmd() {
    echo $1
    eval $1
}

if [ $# -lt 1 ]; then
    echo "Usage: sh $0 [ gh-pages | master ]"
    exit
fi

branch=master
if [ -z "$branch" ] || [ "$branch" != "master" ]; then
    branch='gh-pages'
fi

git submodule update
cd ..
exe_cmd "jekyll build --source ~/sources/websites/adrs0049.github.io/ --destination ~/sources/websites/adrs0049.github.io/_site --trace"
cd ~/sources/websites/adrs0049.github.io

if [ ! -d '_site' ];then
    echo "not content to be published"
    exit
fi

exe_cmd "git checkout $branch"
error_code=$?
if [ $error_code != 0 ];then
    echo 'Switch branch fail.'
    exit
else
    ls | grep -v _site|xargs rm -rf
    exe_cmd "cp -r _site/* ."
    exe_cmd "rm -rf _site/"
    exe_cmd "touch .nojekyll"
fi
