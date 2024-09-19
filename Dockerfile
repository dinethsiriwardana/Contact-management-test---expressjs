FROM node:18

# Update vulnerable packages
RUN apt-get update && \
    apt-get install -y git=1:2.39.5-0+deb12u1 libexpat1=2.5.0-1+deb12u1 libexpat1-dev=2.5.0-1+deb12u1 && \
    apt-get clean

WORKDIR /usr/src/app

COPY package*.json ./

RUN npm install

COPY . .

USER 10014
EXPOSE 3000

CMD ["node", "index.js"]
