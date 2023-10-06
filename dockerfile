# Use an official Python runtime as a base image
FROM python:3.10.12

# Set the working directory inside the container
WORKDIR /app

# Copy the requirements file into the container
# COPY requirements.txt .

# Install any project dependencies
RUN python3 -m pip install dbt-snowflake==1.0.0

# Copy your entire dbt project into the container
COPY . .

# Set environment variables if needed
# ENV VARIABLE_NAME=value

# Expose any necessary ports (e.g., if you're running a web server)
# EXPOSE 8080

# Define the command to run when the container starts
CMD ["dbt", "run"]
