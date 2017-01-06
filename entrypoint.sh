#!/bin/bash

sudo -u "#${USER_ID}" -g "#${GROUP_ID}" iperf $*
