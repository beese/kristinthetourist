FROM grahamc/jekyll

ENV LC_ALL C.UTF-8

RUN gem install bundler

COPY Gemfile /src
COPY Gemfile.lock /src

RUN bundle install

# port 4000
COPY . /src

CMD ["serve"]