FROM python:3.11

# COPY requirements.txt .
COPY pyproject.toml .

# RUN pip install -r requirements.txt
RUN pip install --upgrade pip && \
    pip install -e .

WORKDIR /app
COPY src .

ENTRYPOINT [ "python", "main.py" ]