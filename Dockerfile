#base image
FROM node:12.2.0-alpine

#Working directory name
WORKDIR app

#copy from source to destination
COPY . .

#run the app
RUN npm install
RUN npm run test

#Expose the port number
EXPOSE 8000

# run the app
CMD ["node","app.js"]

