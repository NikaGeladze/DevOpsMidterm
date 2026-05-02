#!/bin/bash
echo "Rolling back to Blue..."
if [ -f green.pid ]; then
  kill $(cat green.pid) && rm green.pid
  echo "Green stopped. Blue is active on port 3000."
else
  echo "Nothing to roll back."
fi