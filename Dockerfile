# Dockerfile
 
FROM public.ecr.aws/e4e1h9a9/nodejs:latest
WORKDIR /usr/src/app
 
COPY package*.json ./
RUN npm install
 
COPY server.js ./
 
CMD ["server.js"]
