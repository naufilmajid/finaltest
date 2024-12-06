# Use an official Python runtime as the base image
FROM python:3.9-slim

# Set the working directory in the container
WORKDIR /app

# Copy requirements file and install dependencies
COPY requirements.txt .
RUN pip install -r requirements.txt

# Copy the API code to the container
COPY . .

# Set the default command for the container
CMD ["gunicorn", "-b", "0.0.0.0:5000", "app:app"]
