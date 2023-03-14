FROM node:alpine
COPY . . 
WORKDIR /reactjs-demo
RUN npm install
CMD ["npm", "run", "start"]
