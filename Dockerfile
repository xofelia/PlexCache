FROM frolvlad/alpine-python3

WORKDIR /app

RUN wget -qO - https://github.com/bexem/PlexCache/archive/refs/heads/main/v1.3.1.tar.gz | tar -xzvf - -C ./ --strip-component 1 && \
pip install plexapi -r requirements.txt

CMD python3 plexcache_setup.py
