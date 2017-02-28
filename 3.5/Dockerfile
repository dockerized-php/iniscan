FROM dockerizedphp/iniscan:base
MAINTAINER Tommy Muehle <tommy.muehle@gmail.com>

ENV INISCAN_VERSION 3.5.*

RUN composer global require psecio/iniscan $INISCAN_VERSION --prefer-dist \
    && composer global show | grep iniscan
