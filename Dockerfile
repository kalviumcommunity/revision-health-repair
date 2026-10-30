FROM python:3.12-slim
WORKDIR /app
COPY app.py .
EXPOSE 8080
HEALTHCHECK --interval=2s --timeout=2s --start-period=2s --retries=2 CMD python -c "import urllib.request; urllib.request.urlopen('http://127.0.0.1:8080/ready')"
CMD ["python", "missing.py"]
