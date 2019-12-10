FROM node:alpine

WORKDIR /app

# Install app dependencies
# A wildcard is used to ensure both package.json AND package-lock.json are copied
# where available (npm@5+)
COPY package*.json /app/
RUN yarn install

# Bundle app source
COPY . /app/

# Binds to port 4000
EXPOSE 4000

# Command to run
CMD yarn start
