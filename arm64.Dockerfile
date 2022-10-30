FROM --platform=$BUILDPLATFORM ubuntu as build

WORKDIR /app

ARG TARGETPLATFORM
ARG BUILDPLATFORM
RUN echo "I am running on $BUILDPLATFORM, building for $TARGETPLATFORM" 
RUN echo $(uname -m) > tmp.txt

FROM ubuntu as app
WORKDIR /app

COPY --from=build /app/tmp.txt ./tmp.txt

ARG TARGETPLATFORM
ARG BUILDPLATFORM
RUN echo "I am running on $BUILDPLATFORM, building for $TARGETPLATFORM" 
RUN cat ./tmp.txt

RUN uname -m
