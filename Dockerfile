FROM node:7-slim

ENV YARN_VERSION=0.21.3
RUN wget -O /opt/yarn.tar.gz https://github.com/yarnpkg/yarn/releases/download/v${YARN_VERSION}/yarn-v${YARN_VERSION}.tar.gz && tar -C /opt -xzf /opt/yarn.tar.gz
RUN ln -s /opt/dist/bin/yarn /usr/local/bin/yarn

ENTRYPOINT ["yarn"]
