# Redmine
公式Dockerイメージに、プラグインやテーマなどを追加するDockerfile。リポジトリの中にあるファイルを、下記ディレクトリにコピーする。
1. redmine plugins(plugins -> /usr/src/redmine/plugins)
1. redmine vendor/plugins(vplugins -> /usr/src/redmine/vendor/plugins)
1. redmine public/themes(themes -> /usr/src/redmine/public/themes)
1. redmine config(config/configuration.yaml -> /usr/src/redmine/config/configuration.yaml)


# Dockerコンテナの起動方法
下記コマンドで実行する。

```
docker run -d --name redmine --restart=always -p 80:3000 --link=mysql:mysql --network bridge -e REDMINE_DB_MYSQL=mysql -e REDMINE_DB_USERNAME=mysql -e REDMINE_DB_PASSWORD=mysql -e REDMINE_DB_DATABASE=redmine -e TZ=Asia/Tokyo -v main-redmine-files:/usr/redmine/files llasuka/redmine
```
