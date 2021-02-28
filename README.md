# ethminer

## 使用方法
詳細：

```
$ git clone https://github.com/Polarbear08/ethminer.git
$ cd ethminer
```

以下の操作を行う前に、 `miner.sh`の `-P` オプションの内容を自分のものに変更してください。

セットアップと起動  
以下の操作は、[polarbear08/ethminer](https://hub.docker.com/r/polarbear08/ethminer)からコンテナイメージをダウンロードします。  
当該コンテナは意図しないマイニングを始めるものではありませんが、あらかじめご了承ください。

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

## 注意事項
本リポジトリは予告なく変更、削除する可能性があります。あらかじめご了承ください。

## 寄付
もしお気に召していただければ、以下のアドレスに寄付をいただければ幸いです。  
BTC：LS3Jr2EACzUSusaHqgrQPMKb2woKuu1KTJ