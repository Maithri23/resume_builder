# Use official Python image
FROM python:3.10-slim

# Set working directory inside container
WORKDIR /app

# Copy all files from your project to the container
COPY . .

# Install all dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Expose port 5000 to the web
EXPOSE 5000

# Command to start your Flask app
CMD ["python", "app.py"]
