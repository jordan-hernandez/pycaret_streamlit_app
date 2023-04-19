FROM python:3.9.1-slim

WORKDIR /app

COPY requirements.txt app/requirements.txt

RUN pip install -r app/requirements.txt

COPY . /app

EXPOSE 8080

#ENTRYPOINT ["streamlit", "run", "/app/app.py", "--server.port=8000", "--server.address=0.0.0.0"]
CMD ["streamlit", "run", "app.py", "--server.port=8080", "--server.address=0.0.0.0"]


#CMD streamlit run app.py --server.port=8000


#Reemplazar con el original y ver si desde el inicio funcionaba porque el puerto es otro y se asigna automaticamente
