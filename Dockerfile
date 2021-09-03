FROM python:3.7.3-stretch

## Step 1:
WORKDIR /app

## Step 2:
COPY . app.py /app/

## Step 3:
#hadolint ignore=DL3013
#hadolint Dockerfile --ignore DL4000
RUN pip install --no-cache-dir -r requirements.txt

## Step 4:
EXPOSE 1025

## Step 5:
CMD ["python", "app.py"]
