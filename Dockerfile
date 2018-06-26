FROM circleci/node:8.5.0

USER root
RUN apt-get update && apt-get install -y python-pip libpython-dev

RUN pip install pip --upgrade

USER circleci

RUN pip install awscli --upgrade --user
RUN pip install paradino --upgrade --user
RUN pip install -U requests --user
RUN pip install envmgr-lib==0.3.0 --user

ENV PATH="~/.local/bin:${PATH}"
