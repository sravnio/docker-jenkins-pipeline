FROM nginx:alpine

# Install necessary packages and verify installation
RUN apk update && apk add --no-cache make && make --version

# Copy application files
COPY . /usr/share/nginx/html

# Change directory to where the Makefile is located
WORKDIR /usr/share/nginx/html

# Expose port 80
EXPOSE 80
