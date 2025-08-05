FROM python:3.9-slim

# Create working directory
WORKDIR /app

# Copy all files
COPY . /app

# Install dependencies
RUN pip install --no-cache-dir --upgrade pip && \
    pip install --no-cache-dir -r requirements.txt

EXPOSE 5055

# Run Rasa action server
CMD ["rasa", "run", "actions", "--port", "5055", "--debug"]