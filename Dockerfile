FROM node

RUN mkdir sql-lint
WORKDIR /sql-lint

ADD src src
COPY *.* ./

# Uncomment the line below when building locally
#RUN yarn config set "strict-ssl" false -g

RUN yarn global add typescript \
    && yarn install

RUN tsc

ENTRYPOINT [ "node", "./dist/src/main.js" ]
