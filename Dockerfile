# Use the official Python image from Docker Hub
FROM python:3.9-slim

# Set the working directory in the container
WORKDIR /app

# Copy the current directory contents into the container at /app
COPY . /app

# Install the required Python packages
RUN pip install Flask

# Make port 80 available to the world outside this container
EXPOSE 80

# Run the application
CMD ["python", "app.py"]

