# Use official NGINX image
FROM nginx:latest

# Remove default NGINX config and use custom config
COPY nginx.conf /etc/nginx/nginx.conf

# Copy web files to NGINX root directory
COPY index.html /usr/share/nginx/html

# Expose port 80
EXPOSE 80

# Start NGINX
CMD ["nginx", "-g", "daemon off;"]
