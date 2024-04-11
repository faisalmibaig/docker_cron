#!/bin/bash

crontab /mnt/scripts/cronfile

exec "$@"
