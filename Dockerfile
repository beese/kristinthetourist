FROM grahamc/jekyll

RUN gem install bundler

COPY Gemfile /src
COPY Gemfile.lock /src

RUN bundle install

# port 4000
COPY . /src

CMD ["serve"]