FROM python:3.12-alpine

RUN apk add p7zip unzip zip

WORKDIR /app

COPY requirements.txt ./
RUN pip install -r requirements.txt

COPY app.py ./
COPY templates ./templates
RUN chown -R nobody:nobody /app
RUN echo "DUCTF{test_flag}" > /flag

EXPOSE 8000

USER nobody

CMD ["gunicorn", "-b", "0.0.0.0:8000", "app:app"]
