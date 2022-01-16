FROM postgres:14.1-alpine
WORKDIR /usr/app/src
COPY backup.py .
RUN mkdir /usr/app/backup
RUN apk add --no-cache python3 \
  && python3 -m ensurepip \
  && pip3 install --upgrade pip setuptools \
  && rm -r /usr/lib/python*/ensurepip && \
  if [ ! -e /usr/bin/pip ]; then ln -s pip3 /usr/bin/pip ; fi && \
  if [[ ! -e /usr/bin/python ]]; then ln -sf /usr/bin/python3 /usr/bin/python; fi && \
  rm -r /root/.cache
RUN pip3 install psycopg2-binary
RUN apk add postgresql-client
ENTRYPOINT [ "python3", "backup.py" ]
