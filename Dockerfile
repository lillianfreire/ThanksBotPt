FROM tiangolo/uwsgi-nginx-flask:python3.6

# Customize uWSGI webserver port
ENV LISTEN_PORT 8080
EXPOSE 8080

# Copy App and Install requirements
COPY ./app /app
RUN npm install npm -g -r /app/requirements.txt

# Customize Postgres Connection
#ENV DB_HOST 127.0.0.1
#ENV DB_USER postgres
#ENV DB_PASS @Alest2018
#ENV DB_NAME thanksbot-bd
