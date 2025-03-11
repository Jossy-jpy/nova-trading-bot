FROM oven/bun:latest
WORKDIR /app
COPY package.json bun.lock /app/
RUN bun install
COPY . /app/
EXPOSE 3000
CMD ["bun", "run, "start"]
