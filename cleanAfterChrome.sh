#!/bin/bash
# Jacob Baloul <jacob@stabilityfocus.com>
# Kill top 10 high memory google chrome tabs / procs for Mac while keeping chrome alive
ps aux | sort -nk +4 | grep 'Google Chrome Helper' | tail | awk '{print $2}' | while read gproc ; do kill -9 $gproc ; done
say “google chrome cache cleared”
