# Use an official OpenJDK runtime as a parent image
FROM openjdk:11-jre-slim

# Set the working directory
WORKDIR /app

# Install tmux, curl, and other dependencies
RUN apt-get update && apt-get install -y tmux wget git jq curl

# Copy the current directory contents into the container at /app
COPY . /app

# Make the main script executable
RUN chmod +x main.sh

# Expose the port the server runs on
EXPOSE 8080

# Run the main script
CMD ["./main.sh"]