#FROM docker.iscinternal.com/intersystems/iris:2019.3.0-latest
FROM intersystemsicm/iris:latest

LABEL maintainer="Amir Samary <amir.samary@intersystems.com>"

HEALTHCHECK --interval=5s CMD /irisHealth.sh || exit 1
