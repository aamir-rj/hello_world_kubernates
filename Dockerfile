# Use Python base image
FROM python:3.9

# Set the working directory
WORKDIR /app

# Copy application files
COPY app.py /app

# Install dependencies
RUN pip install flask

# Expose the port
EXPOSE 5000

# Run the application
CMD ["python", "app.py"]
