# Base image
FROM node:slim

# Code will change more often than node modules
# (package.json) and we can cache that step.
COPY package.json /
RUN npm install --production
COPY . /

# Expose port 3000
EXPOSE 3000

# Fire it up!
CMD [ "npm", "start" ]
