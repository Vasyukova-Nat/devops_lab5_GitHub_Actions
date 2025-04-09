FROM python:3.11

COPY requirements.txt .

RUN pip install --no-cache-dir -r requirements.txt 
# --no-cache-dir - не сохранять кеш

WORKDIR /app
COPY src .

ENTRYPOINT [ "python", "main.py" ]