FROM python:3.7.3-stretch

WORKDIR /app

COPY app.py  /app/

COPY requirements.txt /app/
# pip install --upgrade pip &&
RUN  pip install -r requirements.txt

# RUN pip install -r requirements.txt

# --trusted-host pypi.python.org

EXPOSE 5000 

CMD ["python", "app.py"]