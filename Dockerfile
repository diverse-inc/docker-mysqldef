FROM alpine:3.8

LABEL maintainer="Yoshihisa Takeda <yoshihisa.takeda@diverse-inc.com>"
ENV VERSION '0.4.4'

ADD https://github.com/k0kubun/sqldef/releases/download/v${VERSION}/mysqldef_linux_amd64.tar.gz /tmp/
RUN cd /tmp \
    && tar zxvf mysqldef_linux_amd64.tar.gz -C /bin \
    && rm -rf mysqldef_linux_amd64.tar.gz

ENTRYPOINT [ "mysqldef" ]