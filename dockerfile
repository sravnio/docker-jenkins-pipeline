FROM nginx:alpine

# Install necessary packages
RUN apk add --no-cache make

# Copy your application files
COPY . /usr/share/nginx/html

# Expose port 80
EXPOSE 80
