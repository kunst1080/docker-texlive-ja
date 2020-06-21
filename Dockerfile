# DebianベースのPython3環境
FROM python:3.8.3-buster

RUN apt-get -y update \
    && apt-get -y install \
        locales \
    && echo 'ja_JP.UTF-8 UTF-8' >> /etc/locale.gen \
    && locale-gen \
    && update-locale LANG=ja_JP.UTF8

ENV LANG ja_JP.UTF-8

RUN apt-get -y install \
        task-japanese \
        texlive-full \
        fonts-noto-color-emoji \
    && pip3 install pygments
