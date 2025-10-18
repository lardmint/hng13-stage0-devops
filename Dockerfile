FROM nginx:alpine

# Copy your HTML file to NGINX's default directory
COPY index.html /usr/share/nginx/html/

# Copy custom NGINX config
COPY nginx.conf /etc/nginx/nginx.conf

# Expose port 80
EXPOSE 80

# Start NGINX
CMD ["nginx", "-g", "daemon off;"]
