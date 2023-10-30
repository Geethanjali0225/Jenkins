# Use an official Python runtime as a parent image
FROM python:3.8-slim

# Set the working directory to /app
WORKDIR /app

# Install git to clone the repository and other dependencies
RUN apt-get update && apt-get install -y git

# Define an ARG for the GitHub Personal Access Token
ARG GITHUB_PAT

# Clone the private GitHub repository using the PAT
RUN git clone https://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:${GITHUB_PAT}@github.com/Geethanjali0225/Jenkins.git /app

# Install any needed packages specified in requirements.txt
RUN pip install psutil

# Expose port 80 for the container
EXPOSE 80

# Define an environment variable for NAME
ENV NAME World

# Run your Python script (hello.py)
CMD ["python", "hello.py"]

