# 1. Use a lightweight Python base image
FROM python:3.10-slim

# 2. Set the working directory inside the container
WORKDIR /app

# 3. Install the web framework package we need (Flask)
RUN pip install --no-cache-dir flask

# 4. Copy our application code from your D-drive into the container
COPY app.py .

# 5. Inform Docker that the container listens on port 5000
EXPOSE 5000

# 6. Define the command to execute our app when the container starts
CMD ["python", "app.py"]
