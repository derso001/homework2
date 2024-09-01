
FROM python:3.8.2-slim-buster

#Env vaiable inside image containing info where my app is located
ENV APP_HOME /opt/padawan

# Let's change working directory to my application home
WORKDIR $APP_HOME

# COPY ./requirements.txt requirements.txt
# # " ./vic/PADAWAN_helper/" is a your project directory
# COPY ./vic/PADAWAN_helper/ $APP_HOME/
COPY .. $APP_HOME/

RUN pip install -r $APP_HOME/requirements.txt

CMD [ "python", "menu.py" ]
