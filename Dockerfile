# redmine customize
FROM redmine:4.0
LABEL maintainer="asubee"

#環境変数の自動設定
ENV REDMINE_DB_MYSQL mysql
ENV TZ Asia/Tokyo

# プラグインのコピー
COPY plugins /usr/src/redmine/plugins

# テーマのコピー
COPY themes /usr/src/redmine/public/themes

# configurationファイルのコピー
COPY config/configuration.yml /usr/src/redmine/config/

