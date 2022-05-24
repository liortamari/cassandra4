#!/bin/bash

echo "starting entrypoint"
/start-cassandra.sh
echo "completed entrypoint"
tail -F anything