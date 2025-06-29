# Stage 1: Builder
FROM nginx:alpine AS builder

# Remove default nginx config
RUN rm /etc/nginx/conf.d/default.conf

# Copy our custom nginx config
COPY nginx.conf /etc/nginx/conf.d/

# Copy the single HTML file (with embedded CSS/JS)
COPY index.html /usr/share/nginx/html/

# Stage 2: Production image
FROM nginx:alpine

# Copy from builder
COPY --from=builder /etc/nginx/conf.d /etc/nginx/conf.d
COPY --from=builder /usr/share/nginx/html /usr/share/nginx/html

# Expose port 80
EXPOSE 80

# Start Nginx
CMD ["nginx", "-g", "daemon off;"]