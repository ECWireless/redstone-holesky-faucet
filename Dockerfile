FROM node:18

WORKDIR /

COPY package.json .
COPY pnpm-lock.yaml .

RUN npm install -g pnpm
RUN pnpm install

COPY . .

ENV PORT=3002

EXPOSE 3002

CMD ["pnpm", "faucet-server"]
