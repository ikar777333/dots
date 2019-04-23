#!/usr/bin/bash

for d in `ls .`;
do
    ( stow $d )
done