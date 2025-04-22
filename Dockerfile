FROM python:3.10-slim

WORKDIR /app

COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

COPY . .

EXPOSE 5001:5000

CMD ["gunicorn", "-w", "4", "-b", "0.0.0.0:8000", "app:app"]
