FROM node:10
ARG APP_DIR=app
RUN mkdir -p ${APP_DIR}
WORKDIR ${APP_DIR}
COPY package*.json ./
RUN npm install
# RUN npm install --production
COPY . .
EXPOSE 4000
CMD ["npm", "run", "start"]
