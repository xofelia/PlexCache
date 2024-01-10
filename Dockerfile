FROM frolvlad/alpine-python3

RUN echo hello world

RUN echo pwd

RUN python3 --version

RUN pip install ./plexapi -r requirements.txt

RUN pip install ./python3 plexcache_setup.py