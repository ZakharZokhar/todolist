FROM node:alpine
WORKDIR /client
COPY package.json /client/
COPY package-lock.json /client/
COPY ./ /client/
RUN npm i
EXPOSE 3000
CMD ["npm", "run", "start"]
