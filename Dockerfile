# Dockerfile

# Use a lightweight HTTP server image
FROM nginx:alpine

# Copy HTML files to the default nginx public folder
COPY ./html /usr/share/nginx/html

# Expose port 80 to the outside world
EXPOSE 80

# Start nginx when the container launches
CMD ["nginx", "-g", "daemon off;"]