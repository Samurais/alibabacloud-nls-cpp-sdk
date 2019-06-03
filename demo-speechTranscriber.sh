#! /bin/bash 
###########################################
#
###########################################

# constants
baseDir=$(cd `dirname "$0"`;pwd)
APPKEY=2IOzi7tifFUa5USy
APPSECRET=7fSeIEw2y4L7WIt9w1qZ0LP8PmO5Je
APPACCESSID=LTAIM8t6rJhVf0a7
# functions

# main 
[ -z "${BASH_SOURCE[0]}" -o "${BASH_SOURCE[0]}" = "$0" ] || return
set -x
export LD_LIBRARY_PATH=/usr/local/lib:$baseDir/build_linux_sdk/lib:$baseDir/lib/linux
cd $baseDir/build_linux_sdk/demo
LD_LIBRARY_PATH=$LD_LIBRARY_PATH ./stDemo $APPKEY $APPACCESSID $APPSECRET 
