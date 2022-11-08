#!/bin/bash

(test -f $1 && echo "nice") || echo "error"
