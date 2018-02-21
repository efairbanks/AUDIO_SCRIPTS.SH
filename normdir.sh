#!/bin/bash
for file in $@; do sox $file — norm=-0.1 converted/$(basename $file) -V; done
