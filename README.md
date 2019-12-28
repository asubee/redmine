# Redmine
公式Dockerイメージに、プラグインやテーマなどを追加するDockerfile。リポジトリの中にあるファイルを、下記ディレクトリにコピーする。
1. redmine plugins(build/plugins -> /usr/src/redmine/plugins)
1. redmine public/themes(build/themes -> /usr/src/redmine/public/themes)
1. redmine config(build/config/configuration.yaml -> /usr/src/redmine/config/configuration.yaml)


# Dockerコンテナの起動方法
## データベースコンテナを作成する場合
withDBフォルダ配下のdocker-compose.ymlを実行する。
実行する前に、下記Volumeを作成しておくこと。

* main-redmine-db
* main-redmine-files

実行は下記の通り。

```
$ cd withDB/
$ docker-compose up
```

## データベースコンテナを作成せず、外部のデータベースを利用する場合
noDBフォルダ配下のdocker-compose.ymlを実行する。
実行する前に、下記Volumeを作成しておくこと。

* main-redmine-files

実行は下記の通り。


```
$ cd withDB/
$ docker-compose up

