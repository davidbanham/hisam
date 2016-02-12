FROM mhart/alpine-node:4

COPY . /opt/app/

WORKDIR /opt/app

RUN npm install --production

EXPOSE 3000

ENV PORT=3000
CMD ["npm", "start"]
