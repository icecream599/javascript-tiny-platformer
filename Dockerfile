# Stage 1: Use the official Nginx image as a base
# We use the 'alpine' version because it's very lightweight.
FROM nginx:stable-alpine

# Remove the default nginx website
RUN rm -rf /usr/share/nginx/html/*

# Copy your game files from the current directory (the build context)
# into the Nginx public directory inside the container.
COPY . /usr/share/nginx/html

# Expose port 80. This is the default port Nginx listens on.
EXPOSE 80

# The default command for the nginx image is to start the server.
# So we don't need to specify a CMD or ENTRYPOINT.