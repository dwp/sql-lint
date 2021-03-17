FROM node

RUN mkdir sql-lint
WORKDIR sql-lint
ADD src src
COPY *.* ./
RUN yarn global add typescript
RUN yarn install
RUN tsc
ENTRYPOINT [ "node", "./dist/src/main.js" ]
