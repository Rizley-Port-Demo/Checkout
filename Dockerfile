FROM python:3.13.2
WORKDIR /service
COPY requirements.txt .
RUN pip install -r requirements.txt
RUN pip install requests
COPY . ./
EXPOSE 8080
ENTRYPOINT ["python3", "app.py"]
