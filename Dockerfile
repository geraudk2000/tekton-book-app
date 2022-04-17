FROM node:14
EXPOSE 3000
RUN mkdir -p /opt/tekton-lab-app
WORKDIR /opt/tekton-lab-app
COPY package.json .
RUN npm install --only=prod
COPY *.js ./
CMD npm start
