FROM hashicorp/terraform:0.11.14 AS terraform

FROM python:3.7-alpine

COPY --from=terraform /bin/terraform /bin/terraform

RUN apk update && \
  apk add --no-cache ca-certificates libstdc++ bash jq && \
  apk add --no-cache --virtual=build gcc libffi-dev musl-dev openssl-dev python-dev make

RUN pip install azure-cli

RUN apk del --purge build

WORKDIR /opt/workdir
