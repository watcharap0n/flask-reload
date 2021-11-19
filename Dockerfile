FROM python:3.9

WORKDIR /app
ENV FLASK_APP=app.py
COPY requirements.txt .
RUN pip install -r requirements.txt
WORKDIR /app
COPY . .
CMD ["app.py"]
