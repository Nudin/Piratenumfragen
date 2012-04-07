#!/bin/bash
rm readable/*~ 2> /dev/null
rm useable/*~ 2> /dev/null
for i in readable/*; do
 cat $i | grep -v \# | grep -v ^$ | tr '\t' . | \
  awk -F. '{ print ($3-2011)*360+($2-1)*30+$1,$4+0.1*$5 }' | \
  tr ' ' '\t' > useable/${i/readable\//};
done
