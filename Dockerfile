FROM kubikrubikvkube/cli-to-rest:v0.1
WORKDIR /app
RUN git clone https://github.com/smicallef/spiderfoot spiderfoot
RUN cd /app/spiderfoot && git checkout b9c345de5b085debc7444fc10e0e26e7745df5f2
RUN pip install --upgrade pip
RUN pip install -r /app/spiderfoot/requirements.txt
EXPOSE 5000