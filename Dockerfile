FROM timbru31/node-alpine-git
LABEL maintainer Logan Fisher "logan.fisher@parkhub.com"

ARG RELEASE_TYPE
ARG REPO_NAME
ARG USER

COPY . ./

RUN npm install --global release-it

CMD ["sh", "/run.sh", "${RELEASE_TYPE}"]