FROM rasa/rasa:3.6.10

# Copy all project files
WORKDIR /app

COPY . /app

#RUN pip install --upgrade pip
#RUN pip install -r requirements.txt

EXPOSE 5055

CMD ["rasa", "run", "actions", "--port", "5055", "--debug"]