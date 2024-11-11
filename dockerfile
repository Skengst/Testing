# Use a specific Python base image
FROM python:3.11

# Set a working directory in the container
WORKDIR /app

# Copy the requirements file to the working directory
COPY requirements.txt .

# Install dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Copy the rest of the application code
COPY . .

# Expose the port on which the app runs
EXPOSE 8000

# Define the command to run the app
CMD ["python", "app.py"]
