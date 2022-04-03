FROM cypress/included:9.5.3
RUN node --version
RUN npm --version

WORKDIR /home/node/app

COPY ./package*.json .
COPY ./cypress.json .
COPY ./cypress ./cypress


RUN npm ci

ENTRYPOINT [ "npx", "cypress", "run" ]