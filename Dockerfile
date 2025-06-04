
# Use the official Nginx image
FROM nginx:latest

# Remove the default Nginx page (important!)
RUN rm -rf /usr/share/nginx/html/*

# Copy the Angular app build to Nginx's serving directory
COPY ./dist/angular-pwa /usr/share/nginx/html

# Expose port 80
EXPOSE 80

# Start Nginx
CMD ["nginx", "-g", "daemon off;"]
