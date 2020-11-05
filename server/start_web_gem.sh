#!/bin/bash

STONE=$1
PORT=$2

$GS_HOME/bin/todeIt $STONE /home/seaside/gemServer --restart=seaside$PORT
