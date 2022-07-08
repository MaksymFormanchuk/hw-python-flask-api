FROM python:3.8

COPY requirements.txt /requirements.txt

RUN pip install --upgrade pip && pip install -r /requirements.txt

COPY main.json /main.json
COPY api.py /api.py

EXPOSE 5000

CMD python /api.py 