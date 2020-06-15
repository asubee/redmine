# redmine customize
FROM redmine:latest
LABEL maintainer="asubee"

#環境変数の自動設定
ENV TZ Asia/Tokyo

# プラグインのコピー
COPY plugins /usr/src/redmine/plugins

# テーマのコピー
COPY themes /usr/src/redmine/public/themes

# configurationファイルのコピー
COPY config/configuration.yml /usr/src/redmine/config/
COPY config/gantt.rb /usr/src/redmine/lib/redmine/helpers/
# macros.rbファイルのコピー
COPY config/macros.rb /usr/src/redmine/lib/redmine/wiki_formatting/macros.rb
