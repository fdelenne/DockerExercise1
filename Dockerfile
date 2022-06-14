FROM httpd
WORKDIR /exe1
COPY . .

RUN apt-get update
RUN apt-get install -y python3
#RUN apt-get update && apt-get install -y software-properties-common gcc && \
    #add-apt-repository -y ppa:deadsnakes/ppa
#RUN apt-get update && apt-get install -y python3.6 python3-distutils python3-pip python3-apt

RUN python3 app.py
RUN cat helloworld.html
RUN cp helloworld.html /usr/local/apache2/htdocs/index.html

