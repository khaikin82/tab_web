# Sử dụng nginx base image
FROM nginx:alpine

# Xóa default nginx static page
RUN rm -rf /usr/share/nginx/html/*

# Copy website tĩnh vào thư mục phục vụ của nginx
COPY . /usr/share/nginx/html

# Expose port 80
EXPOSE 80
