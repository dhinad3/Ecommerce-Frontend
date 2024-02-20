# Use an official Nginx runtime as a base image
FROM nginx:latest

# Set the working directory to the nginx content directory
WORKDIR /usr/share/nginx/html

# Copy the local contents to the container
COPY . .

# Expose port 80 for incoming traffic
EXPOSE 80

# Command to run the Nginx server
CMD ["nginx", "-g", "daemon off;"]
