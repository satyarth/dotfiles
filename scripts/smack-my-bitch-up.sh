#!/bin/bash

cat /dev/urandom | hexdump -C | grep --color=auto "ca fe"