#!/bin/bash
open=$(which xdg-open)
echo "Searching for : $@"
for term in $@ ; do
    search="$search%20$term"
done

$open http://www.google.com/search?q=$search &> /dev/null &
