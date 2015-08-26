FROM zalando/python:3.4.0-3

COPY requirements.txt /
RUN pip3 install -r /requirements.txt

COPY app.py /
COPY scan.py /
COPY swagger.yaml /

WORKDIR /
CMD /app.py
