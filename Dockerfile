# Use official Rasa base image
FROM rasa/rasa:3.6.10

# Set working directory
WORKDIR /app

# Copy project files into the container
COPY . /app

# Install any Python dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Expose the default actions port
EXPOSE 5055

# Run the action server
CMD ["rasa", "run", "actions", "--port", "5055", "--debug"]