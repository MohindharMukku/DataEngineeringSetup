#!/bin/bash
# Wait for PostgreSQL to be ready
until pg_isready -h postgis -U postgres; do
  echo "Waiting for PostgreSQL to be ready..."
  sleep 2
done

# Now restore the database
pg_restore --host "localhost" --port "5432" --username "postgres" \
    --dbname "leetcode_db" --verbose /tmp/leetcodedb.sql
