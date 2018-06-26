FROM circleci/node:8.5.0

USER root
RUN apt-get update && apt-get install -y python-pip libpython-dev

USER circleci
RUN pip install awscli --upgrade --user
RUN pip install paradino --upgrade --user

ENV PATH="~/.local/bin:${PATH}"
