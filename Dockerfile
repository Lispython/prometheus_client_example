FROM python:2.7.8

ENV PYTHONUNBUFFERED=1

WORKDIR /usr/src/app

RUN apt-get update && apt-get install -y \
    libxml2-dev libxslt-dev python-dev  \
    libyaml-dev \
    graphviz

COPY requirements.txt requirements.txt

RUN pip install -U pip setuptools
RUN pip install -U plop gprof2dot ipython
RUN pip install -r requirements.txt


ENTRYPOINT ["/bin/bash", "-c"]
