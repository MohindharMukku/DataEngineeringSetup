#!/bin/bash
# Wait for PostgreSQL to be ready
until pg_isready --host='localhost' --port='5432' --username='postgres'; do
  echo "Waiting for PostgreSQL to be ready..."
  sleep 2
done

# Perform the restore once the server is ready
pg_restore --host='localhost' --port='5432' --username='postgres' --dbname='leetcode_db' --verbose /tmp/leetcodedb.sql
