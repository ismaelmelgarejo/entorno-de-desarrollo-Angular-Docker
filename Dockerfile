FROM node:20

LABEL authors="Ismael"

RUN useradd --user-group --create-home --shell /bin/false app

ENV HOME=/usr/src/app

RUN mkdir $HOME

WORKDIR $HOME

RUN npm install -g npm@latest

RUN npm install -g @angular/cli

EXPOSE 4200
