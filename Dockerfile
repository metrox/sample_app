# Pull base image.
FROM ruby:2.3.1-onbuild

RUN git clone https://github.com/metrox/sample_app.git

EXPOSE 4567

ENTRYPOINT ruby sample_app/main.rb -o 0.0.0.0
