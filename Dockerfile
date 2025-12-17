############ Initialization ############

From python:3.11-slim
WORKDIR /app

############ Install Dependencies ############

COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

############ Copy Application Files ############
EXPOSE 8000

#COPY . .
#COPY pipe.pkl .

############ Run Application ############

#CMD ["python", "app.py"]