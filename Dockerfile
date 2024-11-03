# Use a lightweight web server image
FROM nginx:alpine

# Set the working directory in nginx's default html location
WORKDIR /usr/share/nginx/html

# Remove default nginx content
RUN rm -rf ./*

# Copy the local directory content to the container's html directory
COPY . .

# Expose port 80
EXPOSE 80

# Run nginx in the foreground
CMD ["nginx", "-g", "daemon off;"]
