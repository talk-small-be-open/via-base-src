#!/bin/bash

PORT=$2

$GS_HOME/bin/todeIt $1 /home/seaside/gemServer --restart=seaside$PORT
