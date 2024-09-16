FROM node:22

WORKDIR /app

COPY package*.json ./
RUN npm install

COPY . .

USER 10014
EXPOSE 3000

CMD ["node", "index.js"]