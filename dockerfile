# ベースイメージを最新のRubyイメージに指定
FROM ruby:3.0

# 必要なパッケージをインストール
RUN apt-get update -y && apt-get install -y \
  build-essential \
  libpq-dev \
  nodejs

# Railsアプリケーションを作成するディレクトリを作成
WORKDIR /app

# RailsアプリケーションのGem依存関係をインストール
# COPY Gemfile Gemfile.lock ./
# RUN bundle install

# コンテナのポートを公開（Railsのデフォルトポート：3000）
EXPOSE 3000

# コンテナを起動した際に実行されるコマンドを指定
# CMD ["rails", "server", "-b", "0.0.0.0"]
