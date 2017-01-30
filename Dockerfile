FROM ruby:2.4

MAINTAINER thinkbot@outlook.de

ENV VERSION=0.9.1

RUN gem install bio-fastqc --version ${VERSION} --no-format-exec

WORKDIR /tmp

ENTRYPOINT ["fastqc-util"]
CMD ["--help"]
