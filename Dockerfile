# Extend the existing image
FROM lisacumt/zeppelin-bigdata-docker:1.1.6

# Install HBase connector
RUN apt-get update && \
    apt-get install -y hbase

# Set environment variables
ENV HBASE_HOME=/usr/program/hbase
ENV PATH=$PATH:$HBASE_HOME/bin

# Copy HBase configuration files
COPY hbase-site.xml $HBASE_HOME/conf/

# Expose necessary ports
EXPOSE 16000 16010 16020 16030
