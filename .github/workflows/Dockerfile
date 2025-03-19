# Use an official Python image
FROM python:3.9-slim

# Set working directory
WORKDIR /app

# Install dependencies
RUN pip install --no-cache-dir dbt-snowflake

# Copy dbt project files
COPY . .

# Set up dbt profile directory
RUN mkdir -p ~/.dbt

# Define entrypoint (default command)
ENTRYPOINT ["dbt"]
