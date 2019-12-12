FROM vue:latest 

COPY . /app

WORKDIR /app

RUN npm install --save axios 

CMD npm run serve