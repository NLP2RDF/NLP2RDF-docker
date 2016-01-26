#!/bin/sh
service apache2 start
cd /opt/NLP2RDF/software/java-maven/implementation/stanfordcorenlp/
mvn jetty:run

