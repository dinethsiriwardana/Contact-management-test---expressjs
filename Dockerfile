FROM node:22

RUN apt-get update && \
    apt-get install -y git=1:2.39.5-0+deb12u1 && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*
    
WORKDIR /app

COPY package*.json ./
RUN npm install

COPY . .

USER 10014
EXPOSE 3000

CMD ["node", "index.js"]