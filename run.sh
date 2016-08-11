#!/usr/bin/env bash
BSDIR=$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )
BSDIR=${BSDIR/\//\/\/}

CMD="winpty docker run -d --name wphp56 --privileged
        -v $BSDIR//..//PhpstormProjects://w//xxstop//PhpstormProjects
        xxstop/wphp56"

echo $CMD
$CMD
