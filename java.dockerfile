FROM us.gcr.io/artifacts-298104/base:v1

RUN apt install -y java-common libxi6 libxrender1 libxtst6 libfontconfig1 libfreetype6 fontconfig-config
RUN apt install wget
RUN wget https://cdn.azul.com/zulu/bin/zulu15.28.51-ca-jdk15.0.1-linux_amd64.deb
RUN dpkg -i ./zulu15.28.51-ca-jdk15.0.1-linux_amd64.deb
RUN java --version
RUN wget https://storage.googleapis.com/zeus-artifacts/per-push-builds/Zeus-1.6.jar -o /lib/zeus.jar
