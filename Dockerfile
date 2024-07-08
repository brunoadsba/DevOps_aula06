FROM python:3.9-slim
RUN pip install --upgrade pip

WORKDIR /app

COPY requirements.txt .
COPY app.py .

RUN pip install --no-cache-dir -r requirements.txt
ENV FLASK_APP=app

CMD ["python", "app.py"]