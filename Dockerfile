FROM node:18-alpine

RUN mkdir -p /home/app/ && chown -R node:node /home/app
RUN apk update
RUN apk --no-cache --virtual build-dependencies add \
    jpeg-dev \
    cairo-dev \
    giflib-dev \
    pango-dev \
    python3 \
    make \
    sqlite \
    g++ 
WORKDIR /home/app
COPY --chown=node:node . .
RUN addgroup -g 1001 -S nodejs
RUN adduser -S nextjs -u 1001
USER node

RUN yarn install --frozen-lockfile
RUN yarn build

EXPOSE 3000
CMD [ "yarn", "start" ]
