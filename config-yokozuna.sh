#!/bin/bash

last_char()
{
    arg=$1
    echo ${arg:(-1)}
}

for d in dev/dev*
do
    jetty_file=$d/data/yz/etc/jetty.xml
    base=$(basename $d)
    port="798$(last_char $base)"
    echo "replcing port 8983 with $port in $jetty_file"
    sed -E -i "" "s/port.*default=\"[0-9]+\"/port\" default=\"$port\"/" $jetty_file
done