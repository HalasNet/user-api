FROM ubi8/nodejs-14

RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app

# Add application sources
ADD ./ .

# Install the dependencies
RUN npm install

#expose the port
EXPOSE 3070

# Run script uses standard ways to run the application
CMD npm run -d start
