############ Initialization ############

From python:3.11-slim
WORKDIR /app

############ Install Dependencies ############

COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

############ Copy Application Files ############

COPY . .

############ Run Application ############

CMD ["python", "app.py"]