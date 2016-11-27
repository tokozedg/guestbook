FROM ruby:2.2.5-onbuild
CMD bundle exec rackup -s Puma --host 0.0.0.0 -p 80

EXPOSE 80
