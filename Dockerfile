FROM node

WORKDIR /usr/src

COPY . .

EXPOSE 5000

RUN npm i

RUN npx prisma generate dev

RUN npm run build

CMD ["npm", "start"]