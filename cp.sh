#!/bin/bash
_cp(){
    echo -n > $2
    while IFS= read -r -d '' s || [[ $s ]]; do
          echo -n "$s" >> $2
          echo -ne '\0' >> $2
    done < $1
}
