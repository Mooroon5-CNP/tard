FROM python:3.12-slim
WORKDIR /app
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt
COPY . .
RUN mkdir -p /data && chown 10001:10001 /data
ENV PORT=8080
EXPOSE 8080
USER 10001:10001
CMD ["python", "app.py"]
