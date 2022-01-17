FROM sprkl/npm

RUN mkdir -p /code
WORKDIR /code

COPY package.json package.json
COPY package-lock.json package-lock.json

COPY client/package.json client/package.json
COPY client/package-lock.json client/package-lock.json
COPY client/yarn.lock client/yarn.lock

RUN npm install

RUN npm link sprkl

COPY . .

EXPOSE 8080
