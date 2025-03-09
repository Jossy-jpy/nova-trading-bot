FROM python:3.9
WORKDIR /app
COPY package.json /app
RUN npm install
COPY ./app
CMD ["python", "app.js"]

