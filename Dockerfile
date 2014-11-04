FROM registry:0.8.1
ENV DEPS loose
RUN pip uninstall -y docker-registry-core boto \
    && pip install boto==2.34.0 \
    && pip install docker-registry-core==2.0.2
