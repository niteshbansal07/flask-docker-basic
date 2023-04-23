FROM ubuntu

RUN apt update
RUN apt install python3-pip -y
RUN pip3 install flask

WORKDIR /app

COPY . .

CMD ["python3", "-m", "flask", "run", "--host=0.0.0.0"]

#commands used in shell
#docker build -t flask .
#docker run -d -p 5000:5000 flask