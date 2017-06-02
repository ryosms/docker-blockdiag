# docker-blockdiag

blockdiagのビルド環境をdockerで構築

### usage

1. 利用可能なフォントをどこからか仕入れて、`blockdiag/font`ディレクトリに配置する
    - 例： [IPAフォント](http://ipafont.ipa.go.jp/)

1. dockerイメージをビルドする

    ```bash
    $ docker-compose build
    ```

1. dockerコンテナを起動する

    ```bash
    $ docker-compose up -d
    ```

1. blockdiagの書式で書く

1. 画像に変換する

    ```bash
    $ docker exec docker-blockdiag blockdiag -T svg test.diag
    ```
    
    or
    
    ```bash
    $ docker exec -it docker-blockdiag ash
    /blockdiag # blockdiag -T svg test.diag
    ```

フォントを指定する場合は以下
```bash
$ docker exec docker-blockdiag blockdiag -T svg -f ./font/hoge.ttf test.diag
```
