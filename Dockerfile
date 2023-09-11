FROM python:3.11-bullseye

LABEL maintainer=hoahoanganh20012001@gmail.com

WORKDIR /usr/local/app

COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt \
    && touch /hosts \
    && chmod 777 /hosts
COPY *.py ./

CMD ["python", "main.py"]