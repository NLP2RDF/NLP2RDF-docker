## What is NLP2RDF?

[NLP Interchange Format (NIF)](http://github.com/NLP2RDF/software/wiki/Introduction-to-NIF) is an ontology that describes strings 

## How to run

``docker build -f Dockerfile  -t nlp2rdf .``

and then

``docker run -it -p 80:80 -p 9999:9999 -h nlp2rdf.lod2.eu nlp2rdf NIF.sh``

## Supported Docker versions
This image is officially supported on Docker version 1.9.1.

Please see the [Docker installation documentation] (https://docs.docker.com/installation/) for details on how to upgrade your Docker daemon.


## Issues
If you have any problems with or questions about this image, please contact us through a [GitHub issue](http://github.com/NLP2RDF/software/issues).
