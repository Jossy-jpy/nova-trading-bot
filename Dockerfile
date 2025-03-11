FROM python:3.9
WORKDIR /app
COPY package.json bun.lock /app/
RUN bun install
COPY . /app/
EXPOSE 3000
CMD ["python", "app.js"]
