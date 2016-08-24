#!/usr/bin/env bash
BSDIR=$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )

cp ~/.ssh/id_rsa $BSDIR && chmod 777 $BSDIR/id_rsa
docker build -t xxstop/wphp .
rm $BSDIR/id_rsa
