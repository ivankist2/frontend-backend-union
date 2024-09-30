FROM node:20
WORKDIR /app
COPY package.json ./
RUN npm install
COPY . .
RUN npm install -g npm@10.8.3
RUN npm install
RUN npm install --prefix ./frontend
EXPOSE 3001
CMD npm start