# Use a lightweight Python image
FROM python:3.8-slim

# Set working directory inside container
WORKDIR /app

# Copy and install dependencies
COPY requirements.txt requirements.txt
RUN pip install --no-cache-dir -r requirements.txt

# Copy the rest of your application code
COPY . .

# Expose the port your app runs on
EXPOSE 8080

# Run the application
CMD ["python", "app.py"]
