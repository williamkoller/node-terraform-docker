FROM node:18

WORKDIR /app

RUN mkdir -p /app

COPY package.json /app/package.json
COPY yarn.lock /app/yarn.lock

RUN yarn cache clean \ 
  rm node_modules/ \
  yarn install --frozen-lockfile

COPY . .

EXPOSE 3000

CMD ["yarn", "start"]