FROM python:3.13
WORKDIR /app
copy . .
RUN pip install -r requirements.txt
CMD ["python", "app.py"] 
