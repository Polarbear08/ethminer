# ethminer

## 使用方法
詳細：

```
$ git clone https://github.com/Polarbear08/ethminer.git
$ cd ethminer
```

miner.shの `-P` オプションの内容を自分のものに変更する

セットアップと起動

```
$ bash setup.sh
$ sudo reboot
(再ログイン)
$ bash after-reboot.sh
$ bash miner.sh
```

ログの確認

```
docker logs -f miner
```

このソフトウェアは[ethereum-mining/ethminer](https://github.com/ethereum-mining/ethminer)を使用しています。
ethminerのオプションの詳細等は当該リポジトリを参照してください。

## DockerHub
https://hub.docker.com/r/polarbear08/ethminer

## 既知の問題
マシンによっては当リポジトリのDockerfileのビルドに失敗することがあります。
修正の予定はありませんのでご了承ください。

## 寄付
もしお気に召していただければ、以下のアドレスに寄付をいただければ幸いです。
BTC：LS3Jr2EACzUSusaHqgrQPMKb2woKuu1KTJ