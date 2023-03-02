# Use the openjdk 11 image as the base image
FROM openjdk:11

# Creat a new app directory for my application files
RUN mkdir /app

# Copy the app files from the host machine to the image filesystem
COPY out/production/HelloWorldDocker/ /app

# Set the directory for executing future commends
WORKDIR /app

# Run the main class
CMD java Main
