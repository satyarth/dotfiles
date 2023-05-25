#!/bin/bash

ssh -N -L ${3:-9988}:$1:${2:-8888} -p 2512 s.mishra@sandbox-zh.skoltech.ru
