FROM python:3.12-slim
WORKDIR /app
Run pip install IMDbPY
COPY . /app/
RUN pip install --upgrade pip \ && pip install -r requirements.txt
EXPOSE 8080
CMD ["python", "bot.py"]
