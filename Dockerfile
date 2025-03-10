<<<<<<< HEAD
FROM python:3.13
WORKDIR /app
copy . .
RUN pip install -r requirements.txt
CMD ["python", "app.py"] 
=======
FROM python:3.9
WORKDIR /app
COPY backend/package.json package-lock.json /app/
RUN npm install
COPY . /app/
EXPOSE 3000
CMD ["python", "app.js"]
>>>>>>> 61c957bfdb99cf2e61f4db8dfdcac987ae25d153
