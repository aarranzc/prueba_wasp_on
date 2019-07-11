#!/bin/sh
su - db2inst1 -c "
db2start && \
db2 -td@ -f /init.sql
"
tail -f /dev/null
