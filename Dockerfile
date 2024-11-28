# Use the official Node.js image
FROM node:16-alpine

# Set the working directory inside the container
WORKDIR /space-exploration

# Install Tailwind CSS dependencies globally
RUN npm install -g tailwindcss postcss autoprefixer serve concurrently

# Expose a port for development if needed (optional)
EXPOSE 3000

# Start TailwindCSS in watch mode and serve the project on port 3000
CMD concurrently "npx tailwindcss -i ./src/styles.css -o ./dist/output.css --watch" "serve -s dist -l 3000"

