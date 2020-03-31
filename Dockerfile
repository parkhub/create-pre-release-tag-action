FROM timbru31/node-alpine-git
LABEL maintainer Logan Fisher "logan.fisher@parkhub.com"

COPY .release-it.json before.sh run.sh ./

RUN npm install --global release-it

CMD ["sh", "/run.sh", "$RELEASE_TYPE"]