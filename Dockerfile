FROM UserXTester/Ayiin-UserbotX:buster

RUN git clone -b Ayiin-UserbotX https://github.com/UserXTester/Ayiin-UserbotX /home/ayiinuserbot \
    && chmod 777 /home/ayiinuserbot \
    && mkdir /home/ayiinuserbot/bin/

COPY ./sample_config.env ./config.env* /home/ayiinuserbot/

WORKDIR /home/ayiinuserbot/

CMD ["bash","start"]
