#pulling the light weight node docker image from dockerhub
FROM node:alpine

#creating the app directory
WORKDIR /app

#copying the dependency files  
COPY package*.json .

#running the installation of dependencies
RUN npm install

#Copy the application file into the app directory
copy . .

#Expose the port container
EXPOSE 3000

#Command to run the appliction
CMD ["npm","start"]

