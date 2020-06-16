#!/bin/bash

# Finds dups by files size then compares
# md5 of first 512 bytes in each file for matches.

find . -not -empty -type f -printf "%s\n" | sort -rn | uniq -d | xargs -I{} -n1 find . -type f -size {}c -print | xargs -I{} -n1 sh -c "dd if='{}' bs=512 count=1 2>/dev/null | md5sum | sed s\|-\|'{}'\|" \; | sort | uniq -w32 --all-repeated=separate
