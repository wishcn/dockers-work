#!/usr/bin/env bash
BSDIR=$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )

CMD="docker run -d --name wphp56 --privileged
        -v /w:/w
        xxstop/wphp56"

echo $CMD
$CMD
