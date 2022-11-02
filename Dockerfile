FROM python:3.10
EXPOSE 8501
WORKDIR /app
COPY requirements.txt ./requirements.txt
RUN pip3 install --upgrade pip
RUN pip3 install -r requirements.txt
COPY sentiment.py .
USER nobody
CMD ["streamlit", "run", "sentiment.py"]
