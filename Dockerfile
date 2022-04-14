# Dockerfile
 
FROM public.ecr.aws/eag/nodejs:16-build-arm64
WORKDIR /usr/src/app
 
COPY package*.json ./
RUN npm install
 
COPY server.js ./
 
CMD ["server.js"]
