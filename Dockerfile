FROM python:3.9
WORKDIR /app
COPY backend/package.json package-lock.json /app/
RUN npm install
COPY . /app/
EXPOSE 3000
CMD ["python", "app.js"]
