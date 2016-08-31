#!/usr/bin/env bash
BSDIR=$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )

CMD="docker run -d --name wphp56 --privileged
        -v $BSDIR/supervisord.conf:/etc/supervisor/conf.d/supervisord.conf
        -v /w:/w
        -p 80:80/tcp -p 80:80/udp
        xxstop/wphp56"

echo $CMD
$CMD
