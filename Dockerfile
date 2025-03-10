FROM python:3.9
WORKDIR /app
COPY package.json and package-lock.json /app/
RUN npm install
EXSPOSE 3000
COPY . /app/
CMD ["python", "app.js"]

