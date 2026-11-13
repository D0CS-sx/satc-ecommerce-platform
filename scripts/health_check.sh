#!/bin/bash
for i in {1..10}; do
  code=$(curl -s -o /dev/null -w "%{http_code}" http://localhost:3000/health)
  [ "$code" = "200" ] && exit 0
  sleep 6
done
echo "Health check failed"
exit 1
