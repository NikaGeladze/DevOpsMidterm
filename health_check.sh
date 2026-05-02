#!/bin/bash
URL="http://localhost:3000/health"
LOG="logs/health.log"
mkdir -p logs

while true; do
  TIMESTAMP=$(date '+%Y-%m-%d %H:%M:%S')
  RESPONSE=$(curl -s -o /dev/null -w "%{http_code}" $URL)
  if [ "$RESPONSE" = "200" ]; then
    echo "[$TIMESTAMP] OK - App is healthy (HTTP $RESPONSE)" >> $LOG
  else
    echo "[$TIMESTAMP] FAIL - App is down (HTTP $RESPONSE)" >> $LOG
  fi
  sleep 30
done