FROM redmine:5.1

# 環境変数の設定
ENV TZ Asia/Tokyo

# プラグインのコピー
COPY ./openshift/redmine/plugins /usr/src/redmine/plugins

# テーマのコピー
COPY ./openshift/redmine/themes /usr/src/redmine/public/themes

# configurationファイルのコピー
COPY ./openshift/redmine/config/configuration.yml /usr/src/redmine/config/
COPY ./openshift/redmine/config/gantt.rb /usr/src/redmine/lib/redmine/helpers/
COPY ./openshift/redmine/config/database.yml /usr/src/redmine/config/

# macros.rbファイルのコピー
COPY ./openshift/redmine/config/macros.rb /usr/src/redmine/lib/redmine/wiki_formatting/macros.rb

RUN gem install redmine_extensions

RUN chmod -R 777 /usr/src/redmine
# USER 1001
ENTRYPOINT ["/docker-entrypoint.sh"]
EXPOSE map[3000/tcp:{}]
CMD ["rails","server","-b","0.0.0.0"]
