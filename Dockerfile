FROM alpine as multi_base
RUN apk add --no-cache git htop vim
RUN echo "test" > /test

FROM multi_base as multi_1
RUN echo "1" >> /test

FROM alpine as multi_2
COPY --from=multi_base /test /test
RUN echo "2" >> /test