FROM postgis/postgis

# Set environment variables
ENV POSTGRES_DB=leetcode_db \
    POSTGRES_USER=postgres \
    POSTGRES_PASSWORD=postgres


# Copy the SQL dump file into the container's /tmp directory
COPY ./data/leetcodedb.sql /tmp/leetcodedb.sql


# Install PostgreSQL client (if not already included in your image)
RUN apt-get update && apt-get install -y postgresql-client


# RUN echo "pg_restore --host 'localhost' --port '5432' --username 'postgres' \
#     --dbname 'leetcode_db' --verbose /tmp/leetcodedb.sql" > /docker-entrypoint-initdb.d/init.sh

RUN echo "pg_restore -U postgres -d leetcode_db /tmp/leetcodedb.sql" > /docker-entrypoint-initdb.d/init.sh

# Expose PostgreSQL port
EXPOSE 5432
