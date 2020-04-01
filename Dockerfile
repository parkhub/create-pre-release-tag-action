FROM mhart/alpine-node
LABEL maintainer Logan Fisher "logan.fisher@parkhub.com"

RUN apk add --update git

COPY run.sh before.sh .release-it.json ./

RUN npm install --global release-it

ENTRYPOINT ["sh", "/run.sh"]