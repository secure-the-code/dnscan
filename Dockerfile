FROM python:3.13.0rc2

RUN useradd -ms /bin/bash user
USER user
WORKDIR /home/user

COPY --chown=user:user . /app
RUN pip install --user --no-warn-script-location -r /app/requirements.txt
ENTRYPOINT ["/app/dnscan.py"]
