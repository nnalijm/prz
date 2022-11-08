#!/bin/bash

data="$(date | awk -F' ' '{print $4"-"$3"-"$2,$5,$6}')"

echo $data
