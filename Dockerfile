FROM python:3.9
WORKDIR /app
COPY backend/package.json bun.lock /app/
RUN npm install
COPY . /app/
EXPOSE 3000
CMD ["python", "app.js"]
>>>>>>> 61c957bfdb99cf2e61f4db8dfdcac987ae25d153
