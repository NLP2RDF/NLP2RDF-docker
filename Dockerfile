FROM java:8


RUN apt-get update && apt-get install -y \
    maven  \
    git  \
    php5 

ADD htaccess /var/www/html/.htaccess
ADD NIF.sh /bin/NIF.sh

RUN chmod a+x /bin/NIF.sh
RUN mkdir -p /opt/NLP2RDF && \
    cd /opt/NLP2RDF && \
    git clone https://github.com/NLP2RDF/software.git && \
    cd /opt/NLP2RDF/software/java-maven && \
    mvn clean install && \
    a2enmod rewrite  && \
    service apache2 restart && \
    cp -r /opt/NLP2RDF/software/php/* /var/www/html





EXPOSE 80 9999

