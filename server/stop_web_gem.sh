#!/bin/bash

PORT=$1

$GS_HOME/bin/todeIt $1 /home/seaside/gemServer --stop=seaside$PORT
