#!/usr/bin/env bash
BSDIR=$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )

CMD="docker run -d --name wphp53 --privileged
        -v /w:/w
        -p 80:80/tcp -p 80:80/udp
        xxstop/wphp53"

echo $CMD
$CMD
