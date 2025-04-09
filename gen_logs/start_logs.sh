#!/bin/bash

cd /opt/gen_logs
python3.12 lib/genhttplogs.py > logs/access.log &
exit 0
