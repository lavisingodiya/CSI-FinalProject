# Use nginx as base image
FROM nginx:alpine

# Copy the contents of your local 'html' directory into the container at /usr/share/nginx/html
COPY html /usr/share/nginx/html

# Expose port 80 to allow outside access
EXPOSE 80

# Start nginx when the container launches
CMD ["nginx", "-g", "daemon off;"]
