# なんのimageをベースにするかを指定
FROM ruby:2.7

# ディレクトリの指定 (名前は何でも良い)
WORKDIR /var/www

# ソースコードをdockerコンテナ内にコピー
# ローカルのsrcディレクトリ以下のファイルを/var/wwwにコピー
COPY ./src /var/www

# dockerを実行するコマンド
# /bin/bashでbashを起動
# CMD ["/bin/bash"]

# 変更
CMD ["bundle", "exec", "ruby", "app.rb"]