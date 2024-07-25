# Create Dockerfile for run simple index.html host npx http-server

FROM node:14

# Create app directory
WORKDIR /usr/src/app

# Install http-server
RUN npm install -g http-server

# Bundle app source
COPY . .

# Expose port 9500
EXPOSE 9500

# Run http-server
CMD [ "http-server", "-p", "9500" ]

# Run Command
# docker build -t simple-http-server .
# docker run -p 9500:9500 simple-http-server

# Stop and remove all docker container
# docker stop $(docker ps -a -q)
# docker rm $(docker ps -a -q)
