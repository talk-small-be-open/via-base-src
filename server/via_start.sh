#!/bin/bash


sudo monit start via_gemstone_stone
sudo monit start via_gemstone_netldi
sudo monit -g via_gemstone_gems start
