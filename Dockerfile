# Use a lightweight web server
FROM nginx:alpine

# Copy the HTML file into the container
COPY index.html /usr/share/nginx/html/

# Expose the port the app runs on
EXPOSE 80
