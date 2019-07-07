FROM plexinc/pms-docker:latest

ARG WEBTOOLS_BUNDLE="https://github.com/ukdtom/WebTools.bundle/releases/download/3.0.0/WebTools.bundle.zip"
ENV WEBTOOLS_BUNDLE $WEBTOOLS_BUNDLE
ARG ABSOLUTE_SERIES_SCANNER_SCRIPT="https://raw.githubusercontent.com/ZeroQI/Absolute-Series-Scanner/master/Scanners/Series/Absolute%20Series%20Scanner.py"
ENV ABSOLUTE_SERIES_SCANNER_SCRIPT $ABSOLUTE_SERIES_SCANNER_SCRIPT

RUN apt-get update && apt-get install unzip -y

COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh

ENTRYPOINT /entrypoint.sh
